import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/log_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG handling
import 'package:http/http.dart' as http; // Import the http package
import 'dart:convert'; // Import for JSON encoding and decoding

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _signUp() async {
    if (_formKey.currentState!.validate()) {
      // Perform the signup logic here
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Signing up...')),
      );

      // Prepare the data to be sent to the backend
      final fullName = _fullNameController.text;
      final email = _emailController.text;
      final password = _passwordController.text;

      // Make the HTTP POST request
      final response = await http.post(
        Uri.parse('http://localhost:5000/api/auth/register'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'fullName': fullName,
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // Navigate to the login page or show a success message
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LogIn()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Signup failed: ${response.body}')),
        );
      }
    }
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100), // Spacing from the top
                Row(
                  children: [
                    SizedBox(
                      width: 53.2,
                      height: 52,
                      child: SvgPicture.asset(
                        'assets/vectors/vector_7_x2.svg', // Local asset usage
                      ),
                    ),
                    const SizedBox(
                        width: 10), // Spacing between vector and text
                    Text(
                      'Just Talk',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  'Your Information Is Totally Safe With Us',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: _fullNameController,
                  decoration: InputDecoration(
                    labelText: 'Enter Full Name',
                    labelStyle: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 20,
                      color: const Color(0xFF000000).withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Enter Email',
                    labelStyle: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 20,
                      color: const Color(0xFF000000).withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                    labelStyle: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 20,
                      color: const Color(0xFF000000).withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 20,
                      color: const Color(0xFF000000).withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    } else if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: _signUp,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF060C4F), // Button color
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      textStyle: GoogleFonts.getFont(
                        'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontSize: 16,
                        color: const Color(0xFF000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Log In',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF060C4F),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LogIn(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
