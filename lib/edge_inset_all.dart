import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Metode EdgeInsets.all')),
      body: Row(
        children: <Widget>[
          // Container pertama
          Container(
            color: Colors.tealAccent,
            margin: const EdgeInsets.all(10.0), // penggunaan margin
            padding: const EdgeInsets.all(3.0), // penggunaan padding
            child: ElevatedButton(
              child: const Text('Button 1'),
              onPressed: () {},
            ),
          ),

          // Container kedua
          Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(width: 5.0, color: Colors.red),
            ),
            child: ElevatedButton(
              child: const Text('Button 2'),
              onPressed: () {},
            ),
          ),

          // Container ketiga
          Container(
            color: Colors.tealAccent,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            child: ElevatedButton(
              child: const Text('Button 3'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
