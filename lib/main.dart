import 'package:flutter/material.dart';
import 'package:scoredeck/home_screen.dart';

void main() {
  runApp(const ScoreDeck());
}

class ScoreDeck extends StatelessWidget {
  const ScoreDeck({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
