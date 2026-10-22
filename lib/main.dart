import 'package:flutter/material.dart';
import 'widgets/hero_section.dart';
import 'widgets/project_card.dart';


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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 80),
        child: Center(
          child: Column(
            children: [
              HeroSection(),
              SizedBox(height: 120),
              Text(
                'Projects',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: [
                  ProjectCard(
                    title: 'Portfolio',
                    description: 'My personal website built with Flutter.',
                  ),
                  ProjectCard(
                    title: 'Neural Network from Scratch',
                    description: 'Digit recognition with NumPy only. Coming soon.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}