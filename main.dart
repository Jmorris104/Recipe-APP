import 'package:flutter/material.dart';
import 'homescreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chinese Recipe Book App',
      theme: ThemeData(
    scaffoldBackgroundColor: const Color(0x008B8B), 
        
      ),
      home: HomeScreen(),
      
    );
  }
}
