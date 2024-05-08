import 'package:flutter/material.dart';

class PersonalInfoWidget extends StatelessWidget {
  final String fullName;
  final String location;
  final List<String> hobbies;
  final String email;
  final String phoneNumber;
  final String address;

  PersonalInfoWidget({
    required this.fullName,
    required this.location,
    required this.hobbies,
    required this.email,
    required this.phoneNumber,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInfoRow(context, Icons.person, 'Nom complet', fullName),
        _buildInfoRow(context, Icons.location_on, 'Localisation', location),
        _buildInfoRow(context, Icons.email, 'E-mail', email),
        _buildInfoRow(context, Icons.phone, 'Téléphone', phoneNumber),
        _buildInfoRow(context, Icons.home, 'Adresse', address),
        _buildInfoRow(context, Icons.favorite, 'Centres d\'intérêt', hobbies.join(', ')),
      ],
    );
  }

  Widget _buildInfoRow(BuildContext context, IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label + ' :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
