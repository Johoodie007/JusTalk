import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/doc_sign_up.dart';
import 'package:flutter_app/pages/sign_up.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';

class Role extends StatelessWidget {
  const Role({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'JusTalk',
          style: TextStyle(color: Color(0xFFE3E3EA)),
        ),
        backgroundColor: const Color(0xFF273686),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Smallest Image Possible
            SizedBox(
              width: 320, // Reduced width
              height: 320, // Reduced height
              child: Image.asset(
                'assets/images/istockphoto-1226853921-612x612.jpg',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 15), // Space between image and text

            // Text Heading
            const Text(
              'Please select your role:',
              style: TextStyle(
                fontSize: 20, // Slightly reduced font
                fontWeight: FontWeight.bold,
                color: Color(0xFF08082D),
              ),
              textAlign: TextAlign.center, // Ensures alignment
            ),
            const SizedBox(height: 30),

            // Role Options
            RoleOption(
              role: 'Psychotherapist',
              icon: Icons.medical_services,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DocSignUp()),
                );
              },
              recognizer: null,
            ),
            const SizedBox(height: 15),
            RoleOption(
              role: 'Patient',
              icon: Icons.person,
              recognizer: TapGestureRecognizer(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RoleOption extends StatelessWidget {
  final String role;
  final IconData icon;
  final VoidCallback onTap;

  const RoleOption({
    super.key,
    required this.role,
    required this.icon,
    required this.onTap,
    required recognizer,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18), // Slightly smaller padding
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF273686),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center-align content
          children: <Widget>[
            Icon(icon, size: 25, color: Colors.white), // Slightly smaller icon
            const SizedBox(width: 15),
            Text(
              role,
              style: const TextStyle(
                fontSize: 18, // Slightly reduced font
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

