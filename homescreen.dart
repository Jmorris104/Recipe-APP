import 'package:flutter/material.dart';
import 'detailscreen.dart';

class HomeScreen extends StatelessWidget {
  // List of Chinese food recipes with details
  final List<Map<String, String>> recipes = [
    {
      'name': 'Kung Pao Chicken',
      'details': 'Ingredients:\n- Chicken breast\n- Peanuts\n- Bell peppers\n- Garlic\n- Ginger\n- Soy sauce\n- Vinegar\n- Dried chili peppers\n\nInstructions:\n1. Marinate the chicken in soy sauce.\n2. Stir fry garlic, ginger, and chili peppers.\n3. Add chicken and peanuts, cook until done.\n4. Add soy sauce and vinegar, then serve hot.'
    },
    {
      'name': 'Sweet and Sour Chicken',
      'details': 'Ingredients:\n- Chicken breast \n- Bell peppers\n- Pineapple\n- Vinegar\n- Ketchup\n- Sugar\n- Soy sauce\n\nInstructions:\n1. Fry pork until golden.\n2. Mix vinegar, ketchup, sugar, and soy sauce to create the sweet and sour sauce.\n3. Stir fry bell peppers and pineapple, then add fried pork.\n4. Pour sauce over and serve with rice.'
    },
    {
      'name': 'Ma Po Tofu',
      'details': 'Ingredients:\n- Tofu\n- Ground pork\n- Chili bean paste\n- Soy sauce\n- Garlic\n- Ginger\n- Green onions\n\nInstructions:\n1. Stir fry garlic and ginger, then add pork.\n2. Add chili bean paste and soy sauce.\n3. Gently stir in tofu and cook for a few minutes.\n4. Garnish with green onions and serve.'
    },
    {
      'name': 'Peking Duck',
      'details': 'Ingredients:\n- Whole duck\n- Hoisin sauce\n- Pancakes\n- Scallions\n- Cucumber\n\nInstructions:\n1. Roast the duck until the skin is crispy.\n2. Slice thin pieces of duck.\n3. Serve with hoisin sauce, pancakes, and sliced scallions and cucumber.'
    },
    {
      'name': 'Dim Sum Dumplings',
      'details': 'Ingredients:\n- Ground pork\n- Shrimp\n- Wonton wrappers\n- Soy sauce\n- Ginger\n- Garlic\n- Green onions\n\nInstructions:\n1. Mix pork, shrimp, garlic, ginger, and soy sauce.\n2. Fill wonton wrappers with the mixture and fold into dumplings.\n3. Steam for 10-15 minutes and serve with soy sauce.'
    },
    {
      'name': 'Szechuan Hotpot',
      'details': 'Ingredients:\n- Beef slices\n- Lamb slices\n- Tofu\n- Mushrooms\n- Hotpot broth\n- Chili oil\n\nInstructions:\n1. Heat the broth in a pot.\n2. Add chili oil for spiciness.\n3. Cook beef, lamb, tofu, and mushrooms in the broth and serve with dipping sauces.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chinese Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(recipes[index]['name']!),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to DetailsScreen and pass the selected recipe
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      recipeName: recipes[index]['name']!,
                      recipeDetails: recipes[index]['details']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

