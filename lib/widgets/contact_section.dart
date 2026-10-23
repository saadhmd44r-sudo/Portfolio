import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'reveal_on_scroll.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _openLink(String url) async {
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return RevealOnScroll(
      child: Column(
        children: [
          const Text(
            'Contact',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            "Let's work together. Feel free to reach out.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 32),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            children: [
              TextButton.icon(
                onPressed: () =>
                    _openLink('https://github.com/saadhmd44r-sudo'),
                icon: const Icon(Icons.code),
                label: const Text('GitHub'),
              ),
              TextButton.icon(
                onPressed: () => _openLink('mailto:saadhmaidi24@gmail.com'),
                icon: const Icon(Icons.email),
                label: const Text('Email'),
              ),
              TextButton.icon(
                onPressed: () =>
                    _openLink('https://www.linkedin.com/in/saad-hmaidi/'),
                icon: const Icon(Icons.work),
                label: const Text('LinkedIn'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
