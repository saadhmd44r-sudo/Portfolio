import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Saad Hmaidi',
          style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          'AI Engineering Student',
          style: TextStyle(fontSize: 24, color: Colors.blueAccent),
        ),
        const SizedBox(height: 16),
        const Text(
          "I'm building my way to becoming an AI Engineer.",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('View my work'),
            ),
            const SizedBox(width: 16),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Contact me'),
            ),
          ],
        ),
      ],
    );
  }
}