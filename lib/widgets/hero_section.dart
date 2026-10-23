import 'package:flutter/material.dart';

import 'reveal_on_scroll.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onViewWork;
  final VoidCallback onContact;

  const HeroSection({
    super.key,
    required this.onViewWork,
    required this.onContact,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 600;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RevealOnScroll(
          child: Text(
            'Saad Hmaidi',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 40 : 56,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        RevealOnScroll(
          delay: const Duration(milliseconds: 150),
          child: Text(
            'AI Engineering Student',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 20 : 24,
              color: Colors.blueAccent,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const RevealOnScroll(
          delay: Duration(milliseconds: 300),
          child: Text(
            "I'm building my way to becoming an AI Engineer.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
        const SizedBox(height: 32),
        RevealOnScroll(
          delay: const Duration(milliseconds: 450),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 12,
            children: [
              ElevatedButton(
                onPressed: onViewWork,
                child: const Text('View my work'),
              ),
              OutlinedButton(
                onPressed: onContact,
                child: const Text('Contact me'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
