import 'package:flutter/material.dart';
import 'package:camera/camera.dart'; // Import package camera
import 'widget/takepicture_screen.dart'; 
// List of available cameras
List<CameraDescription> cameras = [];

Future<void> main() async {
  // Initialize the camera plugin
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras(); // Fetch available cameras

  // Get the first camera from the list (for example, the back camera)
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        // Pass the first camera to TakePictureScreen widget
        camera: firstCamera,
      ),
      debugShowCheckedModeBanner: false, // Disable the debug banner
    ),
  );
}
