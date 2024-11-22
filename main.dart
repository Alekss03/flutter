import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          backgroundColor: Colors.purple,
        ),
        body: const Configurator(),
      ),
    );
  }
}

class Configurator extends StatefulWidget {
  const Configurator({Key? key}) : super(key: key);

  @override
  _ConfiguratorState createState() => _ConfiguratorState();
}

class _ConfiguratorState extends State<Configurator> {
  double _width = 100.0;
  double _height = 100.0;
  double _radius = 20.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Width: ${_width.toStringAsFixed(2)}'),
          Slider(
            value: _width,
            min: 50.0,
            max: 300.0,
            onChanged: (value) {
              setState(() {
                _width = value;
              });
            },
          ),
          Text('Height: ${_height.toStringAsFixed(2)}'),
          Slider(
            value: _height,
            min: 50.0,
            max: 300.0,
            onChanged: (value) {
              setState(() {
                _height = value;
              });
            },
          ),
          Text('Radius: ${_radius.toStringAsFixed(2)}'),
          Slider(
            value: _radius,
            min: 0.0,
            max: 150.0,
            onChanged: (value) {
              setState(() {
                _radius = value;
              });
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(_radius),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
