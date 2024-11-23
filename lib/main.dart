import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TFLite Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('TFLite Flutter Demo with Adam')),
        body: TFLiteDemo(),
      ),
    );
  }
}

class TFLiteDemo extends StatefulWidget {
  @override
  _TFLiteDemoState createState() => _TFLiteDemoState();
}

class _TFLiteDemoState extends State<TFLiteDemo> {
  late Interpreter _interpreter;

  @override
  void initState() {
    super.initState();
    loadModel();
  }

  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset('assets/your_model.tflite');
    print("Model loaded successfully");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("TensorFlow Lite Model Loaded"),
    );
  }
}
