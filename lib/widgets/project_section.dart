import 'package:flutter/material.dart';

import 'project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
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
    );
  }
}
