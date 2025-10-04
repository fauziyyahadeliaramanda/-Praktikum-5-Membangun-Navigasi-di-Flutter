import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 5 Navigasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Hanya definisikan HomePage saja
      home: HomePage(),
    );
  }
}
