import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter yang menyediakan widget dan elemen UI.
import 'package:provider/provider.dart'; // digunakan untuk manajemen state dalam aplikasi.
import 'app.dart';  // Mengimpor file app.dart, yang mungkin berisi kode utama aplikasi
import 'state/app_state.dart'; // berisi class untuk state management dengan ChangeNotifier

void main() {
  runApp(
    ChangeNotifierProvider( //state aplikasi yang menggunakan ChangeNotifier untuk memberi tahu UI ketika ada perubahan.
      create: (context) => MyAppState(),//membuat instance MyAppState yang akan digunakan sebagai state global di dalam aplikasi.
      child: const MyApp(), //MyApp sebagai root widget aplikasi
    ),
  );
}
