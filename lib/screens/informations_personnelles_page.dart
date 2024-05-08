import 'package:flutter/material.dart';
import 'widget/personal_info_widget.dart'; // Importez votre widget PersonalInfoWidget depuis votre ProfilScreen

class InformationsPersonnellesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations personnelles'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                // Ajoutez ici la logique pour changer l'image de profil ou pour ouvrir une galerie de photos
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey[400]!),
                ),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('img/ipeis.jpg'), // Ajoutez le chemin de votre image d'avatar
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  child: Text(
                    'John Doe', // Remplacez par le nom prénom
                  ),
                ),
                const SizedBox(height: 8),
                // Description bio
                Text(
                  'Développeur passionné avec une expérience dans la création d\'applications mobiles. Toujours à la recherche de nouvelles technologies et de solutions innovantes pour résoudre des problèmes.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Réseaux sociaux
                    Text('Réseaux sociaux :'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {
                            // Logique pour l'email
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.facebook),
                          onPressed: () {
                            // Logique pour Facebook
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.link),
                          onPressed: () {
                            // Logique pour LinkedIn
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    PersonalInfoWidget(
                      fullName: 'John Doe', // Remplacez par le nom complet
                      location: 'New York, USA', // Remplacez par la localisation
                      hobbies: ['Photographie', 'Voyages', 'Lecture'],
                      email: 'john.doe@example.com', // Ajoutez l'adresse e-mail
                      phoneNumber: '+1 234 567 890', // Ajoutez le numéro de téléphone
                      address: '123, rue Principale, New York', // Ajoutez l'adresse
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
