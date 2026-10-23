import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Saad Hmaidi',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isMobile ? 40 : 56,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'AI Engineering Student',
          style: TextStyle(fontSize: 24, color: Colors.blueAccent),
        ),
        const SizedBox(height: 16),
        const Text(
          "I'm building my way to becoming an AI Engineer.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(height: 32),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('View my work')),
            OutlinedButton(onPressed: () {}, child: const Text('Contact me')),
          ],
        ),
      ],
    );
  }
}
