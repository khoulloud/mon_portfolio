import 'package:flutter/material.dart';
import 'informations_personnelles_page.dart';
import 'etudes_page.dart';
import 'experiences_professionnelles_page.dart';
import 'competences_certifications_page.dart';
import 'portfolio_page.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(bool) toggleTheme;

  const BottomNavBar({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    InformationsPersonnellesPage(),
    EtudesPage(),
    ExperiencesProfessionnellesPage(),
    const CompetencesCertificationsPage(),
    PortfolioPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.folder, color: Theme.of(context).primaryColor), // Icône du thème à côté de l'en-tête
            const SizedBox(width: 8), // Espacement
            const Text('Portfolio'),

            // En-tête "Portfolio"
          ],
        ),
      ),

      body: Column(
        children: [
          SwitchListTile(
            title: Text('Theme'),
            secondary: Icon(
              Theme.of(context).brightness == Brightness.dark ? Icons.dark_mode : Icons.light_mode,
              color: Theme.of(context).brightness == Brightness.dark ? Colors.yellow : Colors.grey,
            ),
            value: Theme.of(context).brightness == Brightness.dark,
            onChanged: widget.toggleTheme,
            activeColor: Colors.yellow,
            activeTrackColor: Colors.yellowAccent,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.grey.shade400,
          ),
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
            backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Études',
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Expériences professionnelles',
            backgroundColor: Colors.deepPurpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Compétences & certifications',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Portfolio',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
