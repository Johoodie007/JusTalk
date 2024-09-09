import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/doc_sign_up.dart';
import 'package:flutter_app/pages/sign_up.dart';
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
                color: Color(0xFF08082D),
              ),
            ),
            const SizedBox(height: 40),
            RoleOption(
              role: 'Psychotherapist',
              icon: Icons.medical_services,
              onTap: () {
                Navigator.push (context,
                    MaterialPageRoute(builder: (context) => const DocSignUp()),
                );
              },
              recognizer: null,
            ),
            const SizedBox(height: 20),
            RoleOption(
                role: 'Patient',
                icon: Icons.person,
                recognizer: TapGestureRecognizer(),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Choose Your Role', style: TextStyle(
          color: Color(0xFFE3E3EA),
        ),
        ),
        backgroundColor: const Color(0xFF273686),
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}

class RoleOption extends StatelessWidget {
  final String role;
  final IconData icon;
  final VoidCallback onTap;

  const RoleOption(
      {super.key,
      required this.role,
      required this.icon,
      required this.onTap,
      required recognizer});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF273686),
        ),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 30, color: Colors.white),
            const SizedBox(width: 20),
            Text(
              role,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
