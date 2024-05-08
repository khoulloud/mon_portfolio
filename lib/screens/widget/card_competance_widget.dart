import 'package:flutter/material.dart';

class competanceWidget extends StatelessWidget {
  final String title;
  final String content;
  final IconData? icon; // Ajout de l'icône comme champ optionnel

  competanceWidget({
    required this.title,
    required this.content,
    this.icon, // Marquer l'icône comme facultative
  });

  @override
  Widget build(BuildContext context) {
    return Row( // Utilisation d'un Row pour afficher l'icône à côté du titre et du contenu
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (icon != null) // Affichage de l'icône si elle est fournie
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(icon),
          ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                content,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
