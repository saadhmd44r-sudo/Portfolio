import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Contact',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          "Let's work together. Feel free to reach out.",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.code),
              label: const Text('GitHub'),
            ),
            const SizedBox(width: 16),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.email),
              label: const Text('Email'),
            ),
            const SizedBox(width: 16),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.work),
              label: const Text('LinkendIn'),
            ),
          ],
        ),
      ],
    );
  }
}