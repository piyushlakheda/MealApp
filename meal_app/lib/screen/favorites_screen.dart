// ignore_for_file: prefer_const_constructors
import '../models/meals.dart';
import '../widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;
  FavoritesScreen(this.favoritesMeals);
  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text(
          'You have no Favorites',
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritesMeals[index].id,
            title: favoritesMeals[index].title,
            imageUrl: favoritesMeals[index].imageUrl,
            affordability: favoritesMeals[index].affordability,
            duration: favoritesMeals[index].duration,
            complexity: favoritesMeals[index].complexity,
            // removeItem: _removeMEal   );
          );
        },
        itemCount: favoritesMeals.length,
      );
    }
  }
}
