import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; // Mengimpor paket english_words, yang menghasilkan pasangan kata acak (WordPair) dalam bahasa Inggris

class MyAppState extends ChangeNotifier {
  var current = WordPair.random(); //mendeklarasikan variabel tanpa tipe data
  var favorites = <WordPair>[]; //mendeklarasikan variabel tanpa tipe data

  void getNext() { // function untuk melakukan tindakan 
    current = WordPair.random();
    notifyListeners();
  }

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.removeWhere((pair) => pair == current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}
