import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  // final String categoryId;
  // final String categoryTitle;

  // MealDetailScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map;

    final mealTitle = routeArgs['title'];
    final mealId = routeArgs['id']; // keep track Favorites
    final duration = routeArgs['duration'];

    return Scaffold(
      appBar: AppBar(
        title: Text(mealTitle),
      ),
      body: Column(
        children: [
          Text('duration $duration'),
          Text('identity $id'),
        ],
      ),
    );
  }
}
