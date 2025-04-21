import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Action Button App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String fileName = 'images/logo_kelas.png';

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'images/logo_kelas.png';
          break;
        case 1:
          fileName = 'images/POLBENG.png';
          break;
        case 2:
          fileName = 'images/logo_vokasi.png'; // Gambar jangkar
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Action Button'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.laptop),
            onPressed: () {
              selectImage(0);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance),
            onPressed: () {
              selectImage(1);
            },
          ),
          IconButton(
            icon: const Icon(Icons.anchor),
            onPressed: () {
              selectImage(2);
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(16.0),
            child: Image.asset(
              fileName,
              width: screenWidth * 0.9, // Lebar 90% dari layar
              height: screenWidth * 0.5, // Tinggi disesuaikan proporsional
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
