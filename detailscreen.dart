import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;
  final String recipeDetails;

 const DetailsScreen({required this.recipeName, required this.recipeDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          recipeDetails,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
