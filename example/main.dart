import 'package:flutter/material.dart';
import 'package:flutter_custom_textfield_ui/flutter_custom_textfield_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16),
          child: DemoScreen(),
        ),
      ),
    );
  }
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: TextEditingController(),
      hintText: "Enter your name",
    );
  }
}