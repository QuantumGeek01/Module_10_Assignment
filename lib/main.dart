import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orientation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OrientationScreen(),
    );
  }
}

class OrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation Demo'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return _buildOrientationLayout(orientation);
        },
      ),
    );
  }

  Widget _buildOrientationLayout(Orientation orientation) {
    if (orientation == Orientation.portrait) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  'Placeholder Image 1',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Placeholder Image 2',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  'Placeholder Image 1',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Placeholder Image 2',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}

