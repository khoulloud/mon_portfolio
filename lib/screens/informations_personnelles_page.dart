import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widget/personal_info_widget.dart'; // Importez votre widget PersonalInfoWidget depuis votre ProfilScreen

class InformationsPersonnellesPage extends StatelessWidget {
  const InformationsPersonnellesPage({Key? key});

  // Fonction pour ouvrir un URL
  Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible d\'ouvrir l\'URL : $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About me'),
        backgroundColor:  Colors.purpleAccent, // Utiliser la couleur de fond de la barre de navigation inférieure
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  GestureDetector(
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
                        backgroundImage: AssetImage('img/avatar.png'), // Ajoutez le chemin de votre image d'avatar
                      ),
                    ),
                  ),
                  const SizedBox(width: 20), // Ajoutez un espace entre l'image et le nom
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                          child: Text(
                            'Khouloud Gharbi', // Remplacez par le nom prénom
                          ),
                        ),
                        SizedBox(height: 8),
                        // Description bio
                        Text(
                          'Im a software engineering student currently in my second year of studies. My unwavering commitment to knowledge fuels my enthusiasm for software engineering and innovation.',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                          maxLines: 3, // Définissez le nombre maximum de lignes que vous voulez afficher
                          overflow: TextOverflow.ellipsis, // Définissez le comportement de dépassement du texte
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PersonalInfoWidget(
              fullName: 'Gharbi Khouloud', // Remplacez par le nom complet
              location: 'Sfax,Tunisie', // Remplacez par la localisation
              hobbies: const ['Gymnastique', 'Voyages', 'Lecture'],
              email: 'khoulloud99@gmail.com', // Ajoutez l'adresse e-mail
              phoneNumber: '+216 24 019 888', // Ajoutez le numéro de téléphone
              address: '3003, rue cheker, Sfax', // Ajoutez l'adresse
            ),
            const SizedBox(height: 20),
            // Réseaux sociaux
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.email),
                    onPressed: () {
                      // Logique pour l'email
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.facebook),
                    onPressed: () {
                      // Logique pour Facebook
                      launchUrl('https://www.facebook.com/khlayda.gharbi.7/');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.link),
                    onPressed: () {
                      launchUrl('https://www.linkedin.com/in/khouloud-gharbi-642a00178/');
                      // Logique pour LinkedIn
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
