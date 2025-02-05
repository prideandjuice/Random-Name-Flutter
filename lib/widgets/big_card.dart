import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class BigCard extends StatelessWidget {
  final WordPair pair;
  const BigCard({required this.pair});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          pair.asPascalCase,
          style: Theme.of(context).textTheme.headlineMedium,
        ),

      ),
    );
  }
}