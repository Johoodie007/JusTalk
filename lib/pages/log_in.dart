import 'dart:async';
import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/forgot_password.dart';
import 'package:flutter_app/pages/profile_page.dart';
import 'package:flutter_app/pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  LogInState createState() => LogInState();
}

class LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

// In log_in.dart - Enhanced network handling
  Future<void> _logIn() async {
    if (_formKey.currentState!.validate()) {
      final scaffold = ScaffoldMessenger.of(context);
      scaffold.showSnackBar(
        const SnackBar(content: Text('Verifying...')),
      );

      try {
        // 1. Trim and lowercase email input
        final email = _emailController.text.trim();
        final password = _passwordController.text;

        // 2. Add connection timeout
        final response = await http.post(
          Uri.parse('http://192.168.1.28:5000/api/user/login'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'email': email,
            'password': password,
          }),
        ).timeout(const Duration(seconds: 10));

        // 3. Handle different status codes
        final responseBody = jsonDecode(response.body);
        print('Response: ${response.statusCode} - $responseBody');

        if (response.statusCode == 200) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePage(
                userId: responseBody['userId'].toString(),
              ),
            ),
          );
        } else {
          scaffold.showSnackBar(
            SnackBar(content: Text(responseBody['msg'] ?? 'Login failed')),
          );
        }
      } on SocketException {
        scaffold.showSnackBar(
          const SnackBar(content: Text('Network connection failed')),
        );
      } on TimeoutException {
        scaffold.showSnackBar(
          const SnackBar(content: Text('Server timeout')),
        );
      } catch (e) {
        scaffold.showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }

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
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Text(
                  'Welcome',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: const Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 20),
                SvgPicture.asset(
                  'assets/vectors/vector_7_x2.svg',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Enter Email',
                    labelStyle: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 20,
                        color: const Color.fromRGBO(0, 0, 0, 0.6),
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
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
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
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontSize: 16,
                        color: const Color(0xFF060C4F),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: _logIn,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF060C4F),
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
                    child: const Text('Log In'),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontSize: 16,
                        color: const Color(0xFF000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
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
                                  builder: (context) => const SignUp(),
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
