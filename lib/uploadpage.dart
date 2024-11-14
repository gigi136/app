import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/success_page.dart';
import 'package:image_picker/image_picker.dart';

enum FileType { Certificate, ID, Profile }

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  File? _certificateImage;
  File? _idImage;
  File? _profileImage;

  Future<void> _pickImage(ImageSource source, FileType type) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        if (type == FileType.Certificate) {
          _certificateImage = File(pickedFile.path);
        } else if (type == FileType.ID) {
          _idImage = File(pickedFile.path);
        } else if (type == FileType.Profile) {
          _profileImage = File(pickedFile.path);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Documents'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Upload the following:', style: TextStyle(fontSize: 18)),
            Text('Certificate / Statement of Purpose', style: TextStyle(fontSize: 14)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery, FileType.Certificate);
                    },
                    child: Text('Upload Certificate'),
                  ),
                  if (_certificateImage != null)
                    Expanded(
                      child: Image.file(
                        _certificateImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                ],
              ),
            ),
            Text('ID / Passport', style: TextStyle(fontSize: 14)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery, FileType.ID);
                    },
                    child: Text('Upload ID/Passport'),
                  ),
                  if (_idImage != null)
                    Expanded(
                      child: Image.file(
                        _idImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                ],
              ),
            ),
            Text('Profile Photo', style: TextStyle(fontSize: 14)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera, FileType.Profile);
                    },
                    child: Text('Take Profile Photo'),
                  ),
                  if (_profileImage != null)
                    Expanded(
                      child: Image.file(
                        _profileImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessPage()),
                );
              
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
