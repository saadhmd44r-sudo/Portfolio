import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final List<String> tags;
  final String? url;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    this.tags = const [],
    this.url,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _hovered = false;

  Future<void> _open() async {
    final url = widget.url;
    if (url == null) return;
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      cursor: widget.url != null
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: _open,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          width: 300,
          height: 190,
          padding: const EdgeInsets.all(24),
          transform: Matrix4.translationValues(0, _hovered ? -8 : 0, 0),
          decoration: BoxDecoration(
            color: _hovered ? Colors.white12 : Colors.white10,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: _hovered ? Colors.blueAccent : Colors.white24,
            ),
            boxShadow: [
              if (_hovered)
                BoxShadow(
                  color: Colors.blueAccent.withValues(alpha: 0.25),
                  blurRadius: 24,
                  offset: const Offset(0, 8),
                ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.description,
                style: const TextStyle(color: Colors.grey),
              ),
              const Spacer(),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: widget.tags.map((tag) => _Tag(tag)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String label;

  const _Tag(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 12, color: Colors.blueAccent),
      ),
    );
  }
}
