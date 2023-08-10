import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_stagram/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Uint8List? _image;
  void selectImage() async{
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
        print(_image);
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cloud Storage"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: selectImage,
              // onPressed: () async {
              //   final result = await FilePicker.platform.pickFiles(
              //       allowMultiple: false,
              //       allowedExtensions: ["png", "jpg"],
              //       type: FileType.custom);
              //   if (result == null) {
              //     ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(content: Text("No file Selected.")));
              //     return null;
              //   }
              //
              //   final path = result.files.single.path;
              //   final fileName = result.files.single.name;
              //   print(path);
              //   print(fileName);
              // },
              child: Text("Upload file"),
            ),
          )
        ],
      ),
    );
  }
}
