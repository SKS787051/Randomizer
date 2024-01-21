import 'package:flutter/material.dart';
import 'package:foodappapi/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(
                Icons.restaurant_menu,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Food Recipe')
            ],
          ),
        ),
        body: const RecipeCard(
            title: 'MyRecipe',
            cookTime: '30min',
            rating: '4.3',
            thumbnailUrl:
                'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360'));
  }
}
