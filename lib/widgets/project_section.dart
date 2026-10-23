import 'package:flutter/material.dart';

import 'project_card.dart';
import 'reveal_on_scroll.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RevealOnScroll(
          child: Text(
            'Projects',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 32),
        Wrap(
          spacing: 24,
          runSpacing: 24,
          alignment: WrapAlignment.center,
          children: [
            RevealOnScroll(
              delay: Duration(milliseconds: 100),
              child: ProjectCard(
                title: 'Portfolio',
                description: 'My personal website built with Flutter.',
                tags: ['Flutter', 'Dart', 'GitHub Actions'],
                url: 'https://github.com/saadhmd44r-sudo/Portfolio',
              ),
            ),
            RevealOnScroll(
              delay: Duration(milliseconds: 250),
              child: ProjectCard(
                title: 'Neural Network from Scratch',
                description: 'Digit recognition with NumPy only. Coming soon.',
                tags: ['Python', 'NumPy'],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
