import 'package:flutter/material.dart';
import 'package:tip_meme/screens/custom_tip/custom_tip_screen.dart';
import 'package:tip_meme/screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/customTip': (context) => const CustomTip(), // CustomTipScreen(),
      },
      home: HomeScreen(),
    );
  }
}
