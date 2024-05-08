import 'package:flutter/material.dart';
import 'package:mon_portfolio/screens/widget/card_competance_widget.dart';
import 'widget/info_widget.dart'; // Importez votre widget InfoWidget
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CompetencesCertificationsPage extends StatelessWidget {
  const CompetencesCertificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purpleAccent, Colors.purpleAccent], // Choisissez les couleurs de votre dégradé
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, // Supprimer l'ombre de l'AppBar
            title: const Text('Compétences & certifications'),
            centerTitle: true,
          ),
        ),
      ),
      body: SingleChildScrollView( // Ajout du SingleChildScrollView pour permettre le défilement
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          margin: EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.grey, // Changer la couleur de la ligne "Compétences"
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                child: Text(
                  'Compétences :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white), // Changer la couleur du texte en blanc
                ),
              ),
              const SizedBox(height: 8),
              competanceWidget(
                title: 'Flutter',
                content: 'Maîtrise moyenne',
                icon: Icons.mobile_friendly, // Ajouter une icône pour Flutter
              ),
              competanceWidget(
                title: 'Dart',
                content: 'Maîtrise basique',
                icon: Icons.code, // Ajouter une icône pour Dart
              ),
              competanceWidget(
                title: 'React Native',
                content: 'Maîtrise intermédiaire',
                icon: Icons.developer_board, // Ajouter une icône pour React Native
              ),
              competanceWidget(
                title: 'Cloud & Docker', // Ajouter la compétence Cloud & Docker
                content: 'Maîtrise avancée',
                icon: Icons.cloud, // Utiliser une icône cloud pour Cloud & Docker
              ),
              competanceWidget(
                title: 'Python, Deep Learning & Machine Learning', // Ajouter la compétence Python & Deep Learning
                content: 'Maîtrise avancée',
                icon: Icons.language, // Utiliser une icône de langage pour Python & Deep Learning
              ),
              competanceWidget(
                title: 'Laravel & Vue.js', // Ajouter la compétence Laravel & Vue.js
                content: 'Maîtrise intermédiaire',
                icon: Icons.web, // Utiliser une icône web pour Laravel & Vue.js
              ),
              competanceWidget(
                title: 'Langage C', // Ajouter la compétence Langage C
                content: 'Maîtrise avancée',
                icon: Icons.computer, // Utiliser une icône d'ordinateur pour Langage C
              ),
              competanceWidget(
                title: 'Angular & ASP .NET', // Ajouter la compétence Angular & ASP .NET
                content: 'Maîtrise intermédiaire',
                icon: Icons.web_asset, // Utiliser une icône web pour Angular & ASP .NET
              ),
              competanceWidget(
                title: 'Java', // Ajouter la compétence Java
                content: 'Maîtrise avancée',
                icon: Icons.code_rounded, // Utiliser une icône de code pour Java
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.grey, // Changer la couleur de la ligne "Certifications"
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                child: Text(
                  'Certifications :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white), // Changer la couleur du texte en blanc
                ),
              ),
              const SizedBox(height: 8),
              competanceWidget(
                title: 'Certification Flutter Developer',
                content: 'Google Developers',
              ),
              competanceWidget(
                title: 'Certification Dart Programmer',
                content: 'Google Developers',
              ),
              competanceWidget(
                title: 'Cisco Certified Network Associate (CCNA)', // Ajouter la certification CCNA
                content: 'Cisco',
                icon: Icons.router, // Utiliser une icône de routeur pour CCNA
              ),
              competanceWidget(
                title: 'Scrum Fundamentals Certified', // Ajouter la certification Scrum Fundamentals
                content: 'Scrum.org',
                icon: Icons.group_work, // Utiliser une icône de groupe de travail pour Scrum Fundamentals
              ),
            ],
          ),
        ),
      ),
    );
  }
}
