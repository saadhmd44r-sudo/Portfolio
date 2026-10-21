import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saad Hmaidi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Saad Hmaidi',
              style: TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.bold, // ← bold
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'AI Engineering Student',
              style: TextStyle(
                fontSize: 24, // ← 26 → 24
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "I'm building my way to becoming an AI Engineer.",
              style: TextStyle(
                fontSize: 18, // ← 24 → 18
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32), // ← espace kbir 9bel l'boutons
            Row( // ← l'boutons dakhel Row
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('View my work'),
                ),
                const SizedBox(width: 16), // ← width, machi height
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Contact me'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}