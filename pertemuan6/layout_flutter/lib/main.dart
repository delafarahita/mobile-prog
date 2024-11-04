import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return MaterialApp(
      title: 'Flutter Layout: Dela Farahita Zain / 2241720058',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          // Ganti dengan Column sebagai body utama
          children: [
            Image.asset(
              'images/bromo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Masukkan titleSection sebagai salah satu anak
            buttonSection(color), // Tambah button section ke body
            textSection, // Tambahkan variabel text section ke body
          ],
        ),
      ),
    );
  }

  // Method Column _buildButtonColumn
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  // Membuat widget buttonSection
  Widget buttonSection(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }

  // Buat widget textSection
  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
      'Gunung Bromo atau dalam bahasa Tengger dieja "Brama", juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. \n'
      'Dela Farahita Zain / '
      '2241720058',
      softWrap: true,
    ),
  );
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32), // Padding untuk seluruh Container
  child: Row(
    children: [
      Expanded(
        // Soal 1: Letakkan widget Column di dalam widget Expanded
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // crossAxisAlignment set to start
          children: [
            // Soal 2: Tambahkan padding dan buat teks pertama menjadi bold
            Container(
              padding: const EdgeInsets.only(
                  bottom: 8), // Padding 8 untuk teks pertama
              child: const Text(
                'Gunung Bromo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Teks kedua dengan warna abu-abu
            const Text(
              'Kec. Sukapura, Kabupaten Probolinggo, Indonesia',
              style: TextStyle(
                color: Colors.grey, // Warna abu-abu
              ),
            ),
          ],
        ),
      ),
      // Soal 3: Ikon bintang dengan warna merah dan teks "41"
      const Icon(
        Icons.star, // Ikon bintang
        color: Colors.red, // Warna merah
      ),
      const Text('41'), // Teks "41"
    ],
  ),
);
