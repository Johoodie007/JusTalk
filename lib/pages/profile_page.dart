import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProfilePage extends StatefulWidget {
  final String userId;

  const ProfilePage({super.key, required this.userId});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  TextEditingController bioController = TextEditingController();
  File? _image; // Selected image file
  String? profilePicUrl; // Stores profile image URL
  String? fullName; // Stores username

  @override
  void initState() {
    super.initState();
    _fetchUserProfile();
  }

  // Fetch user details from backend
  Future<void> _fetchUserProfile() async {
    var url = Uri.parse('http://192.168.1.28:5000/get-user/${widget.userId}');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      setState(() {
        fullName = data['fullName']; //  Set the username
        bioController.text = data['bio'] ?? '';
        profilePicUrl = data['profilePic'] != '' ? 'http://192.168.1.28:5000/${data['profilePic']}' : null;
      });
    }
  }

  // Pick image from gallery
  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  // Upload bio and profile picture to backend
  Future<void> _uploadProfile() async {
    var uri = Uri.parse('http://192.168.1.28:5000/update-profile');
    var request = http.MultipartRequest('POST', uri)
      ..fields['userId'] = widget.userId
      ..fields['bio'] = bioController.text;

    if (_image != null) {
      request.files.add(await http.MultipartFile.fromPath('profilePic', _image!.path));
    }

    var response = await request.send();
    if (response.statusCode == 200) {
      print('Profile updated successfully');
      _fetchUserProfile(); // 🔹 Reload user profile
    } else {
      print('Failed to update profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _image != null
                    ? FileImage(_image!)
                    : (profilePicUrl != null
                    ? NetworkImage(profilePicUrl!)
                    : AssetImage('assets/default_profile.png')) as ImageProvider,
                child: _image == null && profilePicUrl == null
                    ? Icon(Icons.camera_alt, size: 30, color: Colors.white)
                    : null,
              ),

            ),
            SizedBox(height: 10),
            Text(fullName ?? 'Loading...', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            SizedBox(height: 10),
            TextField(
              controller: bioController,
              decoration: InputDecoration(labelText: 'Enter your bio'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadProfile,
              child: Text('Save Profile'),

            ),
          ],
        ),
      ),
    );
  }
}
