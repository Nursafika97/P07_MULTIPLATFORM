import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo Text Widget')),
        body: Center(
          child: Text(
            'Rekayasa Perangkat Lunak',
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
