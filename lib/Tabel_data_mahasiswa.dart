import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabel Data Mahasiswa',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data Mahasiswa'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // Column digunakan untuk menyusun widget-widget secara vertikal (dari atas ke bawah)
            children: [
              // Header tabel
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  border: Border.all(color: Colors.black),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  // Row digunakan untuk menyusun widget-widget secara horizontal (dari kiri ke kanan)
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "No",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "NIM",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "NAMA",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Baris Data 1
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: const [
                    Expanded(flex: 1, child: Center(child: Text("1"))),
                    Expanded(flex: 2, child: Center(child: Text("1106315"))),
                    Expanded(
                      flex: 3,
                      child: Center(child: Text("Depandi Enda")),
                    ),
                  ],
                ),
              ),

              // Baris Data 2
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: const [
                    Expanded(flex: 1, child: Center(child: Text("2"))),
                    Expanded(flex: 2, child: Center(child: Text("1106316"))),
                    Expanded(
                      flex: 3,
                      child: Center(child: Text("Budi Handoyo")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
