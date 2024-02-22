import 'package:flutter/material.dart';
import 'package:pop_up_screen/home_page.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'POP UP SCREEN',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
