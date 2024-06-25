import 'package:flutter/material.dart';
import 'package:see_tech/Addprodut.dart';
import 'package:see_tech/Login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:see_tech/payment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
