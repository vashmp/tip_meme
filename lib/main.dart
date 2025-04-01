import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tip_meme/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft, // Левый альбомный режим
    DeviceOrientation.landscapeRight, // Правый альбомный режим
  ]).then((_) {
    runApp(MyApp());
  });
}
