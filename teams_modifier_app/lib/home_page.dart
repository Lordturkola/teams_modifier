// Flutter code (lib/home_page.dart)
import 'dart:io'; // Import for File (only for conceptual example)
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giphy_picker/giphy_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart'; // Add http package

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<GiphyGif?> _gif = Future.value(null);
  GiphyGif? _chosenGif = null;
  bool _gifSelected = false;

  Future<void> pickGif() async {
    _chosenGif = await GiphyPicker.pickGif(
      showPreviewPage: false,
      showGiphyAttribution: true,
      context: context,
      apiKey: "tS2O2obRK2Bs7LmAGcpmui0lwVidNbxW",
    );

    if (_chosenGif != null) {
      setState(() {
        _gifSelected = true;
        _gif = Future.value(_chosenGif);
      });
    } else {
      setState(() {
        _gifSelected = false;
      });
    }
  }

  void _saveGif(GiphyGif? gif) async {
    if (gif == null) {
      return;
    }

    final String _targetDirectory = "C:\\Users\\andre\\Downloads\\test.gif";

    try {
      if (!Platform.isWindows) {
        throw Exception("This app only works on Windows");
      }
      final dir = await getTemporaryDirectory();
      print(dir);
      final file = File(_targetDirectory);
      final response = await http.get(Uri.parse(gif.images!.original!.url!));
      print(response);

      if (response.statusCode != 200) {
        throw Exception("error while getting gif data ${response.statusCode}");
      }
      // 2. Get the GIF data as bytes
      await file.writeAsBytes(response.bodyBytes);
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("error trying to save gif: ${e}")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('1. Choose GIF', style: textTheme.displaySmall),
                const SizedBox(height: 20),
                Container(
                  width: 256,
                  height: 256,
                  color: colorTheme.surfaceContainer,
                  child: FutureBuilder<GiphyGif?>(
                    future: _gif,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else if (snapshot.hasData) {
                        _gifSelected = true;
                        return GiphyImage.original(
                          gif: snapshot.data!,
                          width: 256,
                          height: 256,
                        );
                      } else {
                        _gifSelected = false;
                        return const Center(child: Text('No GIF selected'));
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    pickGif();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorTheme.tertiaryContainer,
                    foregroundColor: colorTheme.onTertiary,
                    textStyle: textTheme.headlineLarge,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                  ),
                  icon: Icon(
                    Icons.upload_outlined,
                    size: textTheme.headlineLarge?.fontSize,
                  ),
                  label: const Text("Choose GIF"),
                ),
                const SizedBox(height: 40),
                Text(
                  '2. Press "Set background"',
                  style: textTheme.displaySmall,
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: _gifSelected ? () => _saveGif(_chosenGif) : null,
                  style: FilledButton.styleFrom(
                    textStyle: textTheme.headlineLarge,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                  ),
                  child: const Text("Set background"),
                ),
                const SizedBox(height: 20),
                Text(
                  '3. Select the video background in teams!',
                  style: textTheme.displaySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
