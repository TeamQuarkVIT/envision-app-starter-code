import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}
 

class _homepageState extends State<homepage> {
  bool _loading = true;
  late File _image;
  final imagePicker = ImagePicker();
  List predictions = [];
   // getting images
   getFromGallery() async {
    var image = await imagePicker.getImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }

    detectImage(_image);
  }
 
  getFromCamera() async {
    var image = await imagePicker.getImage(source: ImageSource.camera);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
    detectImage(_image);
  }

  // model loading

  loadModel() async {
    
  }

  detectImage(File img) async {
   

   
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadModel();
  }
  // ui structure
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        "GUN DETECTION",
        style: TextStyle(fontWeight: FontWeight.bold),
      ))),
      body: Column(),
    );
  }
}
