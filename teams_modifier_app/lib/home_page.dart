import 'package:flutter/material.dart';
import 'package:giphy_picker/giphy_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  Future<GiphyGif?> _gif = Future.value(null);
  bool _gifSelected = false;

  pickGif() async {
    final gif = await GiphyPicker.pickGif(
      showPreviewPage: false,
      showGiphyAttribution: false,
      context: context,
      apiKey: "tS2O2obRK2Bs7LmAGcpmui0lwVidNbxW",
    );
    setState(() {
      if (gif != null) {
        _gif = Future.value(gif);
        _gifSelected = true;
      } else {
        _gifSelected = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final windowHeight = MediaQuery.of(context).size.height;
    final windowWidth = MediaQuery.of(context).size.width;
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final btnTheme = Theme.of(context).buttonTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('1. Choose GIF', style: textTheme.displaySmall),
              SizedBox(height: 20),
              Container(
                width: 256,
                height: 256,
                color: colorTheme.surfaceContainer,
                child: FutureBuilder(
                  future: _gif,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (snapshot.data != null) {
                      _gifSelected = true;

                      // Display the GIF
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
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  pickGif();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorTheme.tertiaryContainer,
                  foregroundColor: colorTheme.onTertiary,
                  textStyle: textTheme.headlineLarge,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ), // Increase padding
                ),
                icon: Icon(
                  Icons.upload_outlined,
                  size: textTheme.headlineLarge?.fontSize,
                ),
                label: Text("Choose GIF"),
              ),

              SizedBox(height: 40),
              Text('2. Press "Set background"', style: textTheme.displaySmall),
              SizedBox(height: 20),
              FilledButton(
                onPressed: _gifSelected
                    ? () {
                        // Button action
                      }
                    : null,
                style: FilledButton.styleFrom(
                  textStyle: textTheme.headlineLarge,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ), // Increase padding
                ),
                child: Text("Set background"),
              ),
              SizedBox(height: 20),
              Text(
                '3. Select the video background in teams!',
                style: textTheme.displaySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
