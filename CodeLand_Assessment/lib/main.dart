import 'package:codeland_assessment/features/image_picker_screen.dart';
import 'package:codeland_assessment/features/splash_screen.dart';
import 'package:flutter/material.dart';

import 'features/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Define named routes
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/image_pick': (context) => ImagePickerScreen(),
      },
    );
  }
}