import 'package:eccomerce_applicationn/sign_in.dart';
import 'package:eccomerce_applicationn/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:splash_sceen() );
  }
}
