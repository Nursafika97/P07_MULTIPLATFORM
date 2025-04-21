import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Diri',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Biodata Diri'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xFFE0F2F1), // warna latar belakang lembut
          child: Center(child: Biodata()),
        ),
      ),
    );
  }
}

class Biodata extends StatelessWidget {
  Widget buildBox(String label, String value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.teal),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2, 3)),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal[700],
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  void showMotivasiDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("Motivasi Hari Ini"),
            content: Text(
              "Teruslah berproses, setiap hari adalah kesempatan baru untuk menjadi lebih baik. 💪",
              style: TextStyle(fontSize: 16),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Tutup"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.0),

          // Foto dengan border
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.teal, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage('images/fika.jpg'),
            ),
          ),

          SizedBox(height: 20.0),

          buildBox("Nama Lengkap", "Nur Safika"),
          buildBox("TTL", "Jakarta, 14 Januari 2005"),
          buildBox("Email", "nursafikaefendi@gmail.com"),
          buildBox("Nomor HP", "081234567890"),
          buildBox("Hobi", "Membaca, Travelling, Olahraga"),

          SizedBox(height: 25.0),

          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            ),
            onPressed: () => showMotivasiDialog(context),
            icon: Icon(Icons.lightbulb_outline),
            label: Text('Show More'),
          ),

          SizedBox(height: 25),
        ],
      ),
    );
  }
}
