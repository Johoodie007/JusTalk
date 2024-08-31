import 'package:flutter/material.dart';

class Role extends StatelessWidget {
  const Role({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Please select your role:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 40),
            RoleOption(
              role: 'Psychotherapist',
              icon: Icons.medical_services,
              onTap: () {
                Navigator.pushNamed(context, '/psychotherapist');
              },
            ),
            const SizedBox(height: 20),
            RoleOption(
              role: 'Patient',
              icon: Icons.person,
              onTap: () {
                Navigator.pushNamed(context, '/patient');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Choose Your Role'),
        backgroundColor: const Color(0xFF273686),
      ),
    );
  }
}

class RoleOption extends StatelessWidget {
  final String role;
  final IconData icon;
  final VoidCallback onTap;

  const RoleOption(
      {super.key, required this.role, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurple[50],
        ),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 30, color: Colors.deepPurple),
            const SizedBox(width: 20),
            Text(
              role,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
