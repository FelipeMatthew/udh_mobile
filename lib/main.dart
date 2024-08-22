import 'package:flutter/material.dart';
import 'package:udh_mobile/pages/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User data hub',
      home: SplashScreen(),
    );
  }
}
