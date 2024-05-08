import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;

  const PortfolioWidget({
    required this.title,
    required this.content,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 24, color: Theme.of(context).primaryColor), // Utiliser l'icône avec la couleur primaire du thème
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
