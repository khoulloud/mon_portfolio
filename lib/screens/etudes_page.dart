import 'package:flutter/material.dart';
import 'package:mon_portfolio/screens/widget/card_formation.dart';
import 'widget/info_widget.dart'; // Assurez-vous d'importer votre widget InfoWidget
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class EtudesPage extends StatelessWidget {
  List<TimelineModel> items = [
    TimelineModel(
        CardFormation('img/iit.png', '2022',
            'Diplome En Génie Informatique'),
        position: TimelineItemPosition.left,
        iconBackground: Colors.green,
        icon: const Icon(Icons.school)),
    TimelineModel(
        CardFormation('img/iit.png', '2020',
            'Cycle Préparatoire Math-Physique'),
        position: TimelineItemPosition.right,
        iconBackground: Colors.redAccent,
        icon: const Icon(Icons.school)),
    TimelineModel(
        CardFormation('img/ipeis.jpg', '2019',
            'Cycle préparatoire scientifique '),
        position: TimelineItemPosition.left,
        iconBackground: Colors.blue,
        icon: const Icon(Icons.school)),
    TimelineModel(
        CardFormation('img/images.jpg', '2017', 'Bac Scientifique'),
        position: TimelineItemPosition.right,
        iconBackground: Colors.amber,
        icon: const Icon(Icons.school))
  ];

  // Méthode Header
  Widget Header(IconData icon, String text) {
    return Container( // Conteneur pour le titre
      color: Colors.pinkAccent, // Couleur de fond rose
      padding: const EdgeInsets.all(20), // Ajouter un padding autour du titre
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(width: 30),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Couleur du texte en blanc
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Header(Icons.school, 'Formations'), // Utilisation de la méthode Header
            const SizedBox(height: 10),
            Divider(
              color: Theme.of(context).canvasColor,
            ),
            Timeline(
              lineColor: Colors.pink,
              children: items,
              position: TimelinePosition.Center,
              shrinkWrap: true, // Utiliser uniquement l'espace nécessaire
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
