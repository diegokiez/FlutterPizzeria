import 'package:examen/pizza_custom_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PizzaCustomPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}