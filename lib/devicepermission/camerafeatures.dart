import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class camerafeature extends StatefulWidget {
  const camerafeature({super.key});

  @override
  State<camerafeature> createState() => _camerafeatureState();
}

class _camerafeatureState extends State<camerafeature> {
  String message = "Camera permission not clicked";

  final ImagePicker picker = ImagePicker();

  File? image;

  // Check camera permission
  Future<void> checkcameraPermission() async {
    PermissionStatus status = await Permission.camera.request();

    print("Camera permission: $status");

    if (status.isGranted) {
      setState(() {
        message = "Camera Permission Granted";
      });

      openCamera();
    } else {
      setState(() {
        message = "Camera Permission Denied";
      });
    }
  }

  // Open Gallery
  Future<void> openGallery() async {
    final XFile? pickImage =
    await picker.pickImage(source: ImageSource.gallery);

    if (pickImage != null) {
      setState(() {
        image = File(pickImage.path);
      });
    }
  }

  // Open Camera
  Future<void> openCamera() async {
    final XFile? pickImage =
    await picker.pickImage(source: ImageSource.camera);

    if (pickImage != null) {
      setState(() {
        image = File(pickImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Camera Features"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image != null
              ? Image.file(image!)
              : const Icon(
            Icons.camera,
            size: 100,
          ),

          const SizedBox(height: 20),

          Text(message),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: openGallery,
            child: const Text("Open Gallery"),
          ),

          ElevatedButton(
            onPressed: checkcameraPermission,
            child: const Text("Open Camera"),
          ),
        ],
      ),
    );
  }
}