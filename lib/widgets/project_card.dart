import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
Widget build(BuildContext context) {
  return Container(
    width: 300,
    height: 160,
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      color: Colors.white10,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.white24),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}
}
