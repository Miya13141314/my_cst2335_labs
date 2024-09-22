import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _counter = 0.0; // Use var and initialize with 0.0
  var myFontSize = 30.0; // Declare myFontSize and initialize with 30.0

  void setNewValue(double newValue) {
    setState(() {
      _counter = newValue;
      myFontSize = newValue; // Update myFontSize with newValue
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Remove the const keyword and apply TextStyle using myFontSize
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: myFontSize), // Use myFontSize in TextStyle
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: myFontSize), // Use myFontSize in TextStyle
            ),
            Slider(
              value: _counter,
              min: 0,
              max: 100,
              divisions: 100,
              label: _counter.round().toString(),
              onChanged: setNewValue, // Call setNewValue() when slider is changed
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setNewValue(_counter + 1), // Increment _counter and myFontSize
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
