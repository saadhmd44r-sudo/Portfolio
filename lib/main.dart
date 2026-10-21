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
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Saad Hmaidi',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'AI Engineering Student',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w300,
                color: Colors.blueAccent,
              ),
              ),
            SizedBox(height: 16),
            Text(
              "I'm building my way to becoming an AI Engineer.",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w200,
                color: Colors.blueGrey,
              ),
              ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
