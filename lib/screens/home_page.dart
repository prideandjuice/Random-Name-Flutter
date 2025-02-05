import 'package:flutter/material.dart';
import 'generator_page.dart';
import 'favorites_page.dart';

class MyHomePage extends StatefulWidget { //widget ini memiliki state yang dapat berubah selama aplikasi berjalan.
  @override
  _MyHomePageState createState() => _MyHomePageState(); //Mengembalikan objek dari kelas _MyHomePageState, yang mengelola state dari MyHomePage.
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0; //selectedindex itu variabel dri tipe data int

  @override
  Widget build(BuildContext context) {
    Widget page = (selectedIndex == 0) ? GeneratorPage() : FavoritesPage();
// page adalah widget yang berisi halaman yang akan ditampilkan. Jika selectedIndex bernilai 0, maka GeneratorPage() akan ditampilkan. Jika selectedIndex bernilai 1, maka FavoritesPage() akan ditampilkan.
    return Scaffold( //widget dasar untuk layout aplikasi. Mengatur struktur dasar seperti app bar, body, drawer, bottom navigation, dan lain-lain.
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: MediaQuery.of(context).size.width >= 600, //memperlihatkan label jika lebar layar lebih besar dari 600 piksel (ukuran umum tablet).
              // SafeArea untuk NavigationRail dan Expanded untuk halaman yang dipilih (baik GeneratorPage() atau FavoritesPage()).
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorites'),
                ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ),
          Expanded(child: page),
        ],
      ),
    );
  }
}
