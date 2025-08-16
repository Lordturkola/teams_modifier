import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final windowHeight = MediaQuery.of(context).size.height;
    final windowWidth = MediaQuery.of(context).size.width;
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final btnTheme = Theme.of(context).buttonTheme;

    bool isButtonEnabled = false;
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
              Text('1. Upload a gif', style: textTheme.displaySmall),
              SizedBox(height: 20),
              Container(
                width: 256,
                height: 256,
                color: colorTheme.surfaceContainer,
                child: Text("placeholder for chosen gif"),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: btnTheme.colorScheme?.tertiaryContainer,
                  foregroundColor: btnTheme.colorScheme?.onTertiaryContainer,
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
                label: Text("Choose"),
              ),

              SizedBox(height: 40),
              Text('2. Press "Set background"', style: textTheme.displaySmall),
              SizedBox(height: 20),
              FilledButton(
                onPressed: isButtonEnabled
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
