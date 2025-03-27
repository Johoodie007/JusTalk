import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DoctorProfilePage extends StatefulWidget {
  final String doctorId;

  const DoctorProfilePage({super.key, required this.doctorId});

  @override
  _DoctorProfilePageState createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends State<DoctorProfilePage> {
  TextEditingController bioController = TextEditingController();
  File? _image;
  String? profilePicUrl;
  String? fullName;


  Future<void> _fetchDoctorProfile() async {
    var response = await http.get(
        Uri.parse('http://192.168.1.28:5000/doctors/${widget.doctorId}')
    );

    print("🚀 Fetching profile..."); // Debugging

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print('✅ Fetched Data: $data'); // Debugging

      setState(() {
        fullName = data['fullName'] ?? 'No name available';
        bioController.text = data['bio'] ?? '';
        profilePicUrl = (data['profilePic'] != '' && data['profilePic'] != null)
            ? 'http://192.168.1.28:5000/${data['profilePic']}' // ✅ Fix path formatting
            : null;
      });
    } else {
      print("❌ Failed to fetch profile: ${response.statusCode}");
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load doctor profile'))
      );
    }
  }


  @override
  void initState() {
    super.initState();
    _fetchDoctorProfile();
  }
  // Pick an image from gallery and crop it
  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1), // Square crop
        compressQuality: 80,
        maxWidth: 300,
        maxHeight: 300,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: Colors.blue,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: true,
          ),
          IOSUiSettings(
            title: 'Crop Image',
            aspectRatioLockEnabled: true,
          ),
        ],
      );

      setState(() {
        _image = croppedFile != null ? File(croppedFile.path) : File(pickedFile.path);
        print("🖼️ Image selected: ${_image!.path}");
      });
    }
  }

  Future<void> _uploadProfile() async {
    var uri = Uri.parse('http://192.168.1.28:5000/update-doctor-profile');
    var request = http.MultipartRequest('POST', uri)
      ..headers.addAll({
        "Content-Type": "multipart/form-data",
      })
      ..fields['doctorId'] = widget.doctorId
      ..fields['bio'] = bioController.text;

    if (_image != null) {
      request.files.add(await http.MultipartFile.fromPath('profilePic', _image!.path));
      print('✅ Profile picture added to request: ${_image!.path}');
    }

    print("🚀 Sending request...");
    try {
      var response = await request.send();
      var responseBody = await response.stream.bytesToString();
      print("🎯 Response: $responseBody");

      if (response.statusCode == 200) {
        print('🎉 Profile updated successfully!');
        _fetchDoctorProfile(); // ✅ Refresh profile after update
      } else {
        print('❌ Failed to update profile: ${response.statusCode}');
      }
    } catch (e) {
      print('🔥 Error uploading profile: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Doctor Profile')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _image != null
                    ? FileImage(_image!) as ImageProvider
                    : (profilePicUrl != null && profilePicUrl!.isNotEmpty
                    ? NetworkImage(profilePicUrl!)
                    : const AssetImage('assets/images/default_profile.png')) as ImageProvider,
                child: _image == null && (profilePicUrl == null || profilePicUrl!.isEmpty)
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
