import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Image App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo Listview Image')),
      body: ListView(
        children: <Widget>[
          Image.asset('images/POLBENG.png', height: 250.0, width: 250.0),
          const Divider(),
          Image.asset(
            'images/logo_kelas.png',

            ///ubah ukuran gambar
            height: 250.0,
            width: 250.0,
          ),
        ],
      ),
    );
  }
}
