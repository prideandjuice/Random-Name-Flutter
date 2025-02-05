import 'package:flutter/material.dart';
import 'screens/home_page.dart'; // Mengimpor file home_page.dart, yang mungkin berisi halaman utama aplikasi (MyHomePage).

class MyApp extends StatelessWidget { //stateless, artinya tidak memiliki state yang bisa berubah.
  const MyApp({super.key}); //Konstruktor dengan const untuk membuat instance MyApp.

  @override
  Widget build(BuildContext context) { //build() adalah metode yang meng-override metode dari StatelessWidget.
    return MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 1, 244, 50),
        ),
      ),
      home: MyHomePage(), //Menetapkan MyHomePage sebagai halaman pertama yang akan ditampilkan ketika aplikasi dijalankan
    );
  }
}