import 'package:flutter/material.dart';

import 'widgets/contact_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/nav_bar.dart';
import 'widgets/project_section.dart';

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
      theme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blueAccent,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Kol key kat3ref blasat section f l'page.
  final _heroKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    final sectionContext = key.currentContext;
    if (sectionContext == null) return;
    Scrollable.ensureVisible(
      sectionContext,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        onLogo: () => _scrollTo(_heroKey),
        onProjects: () => _scrollTo(_projectsKey),
        onContact: () => _scrollTo(_contactKey),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
        child: Center(
          child: Column(
            children: [
              HeroSection(
                key: _heroKey,
                onViewWork: () => _scrollTo(_projectsKey),
                onContact: () => _scrollTo(_contactKey),
              ),
              const SizedBox(height: 160),
              ProjectSection(key: _projectsKey),
              const SizedBox(height: 160),
              ContactSection(key: _contactKey),
              const SizedBox(height: 120),
              const Text(
                '© 2026 Saad Hmaidi · Built with Flutter',
                style: TextStyle(color: Colors.white38, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
