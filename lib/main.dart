import 'package:flutter/material.dart';
import 'widgets/hero_section.dart';
import 'widgets/project_section.dart';
import 'widgets/contact_section.dart';


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
              ProjectSection(),
              SizedBox(height: 120),
              ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}