import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  int get _glutenFreeCount =>
      dummyMeals.where((meal) => meal.isGlutenFree).length;

  int get _lactoseFreeCount =>
      dummyMeals.where((meal) => meal.isLactoseFree).length;

  int get _vegetarianCount =>
      dummyMeals.where((meal) => meal.isVegetarian).length;

  int get _veganCount => dummyMeals.where((meal) => meal.isVegan).length;

  int get _quickMealsCount =>
      dummyMeals.where((meal) => meal.duration <= 20).length;

  int get _simpleMealsCount =>
      dummyMeals.where((meal) => meal.complexity == Complexity.simple).length;

  Widget _buildStatCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withValues(alpha: 0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        trailing: Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Statistics'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Catalog Overview',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          _buildStatCard(
            context,
            title: 'Total Categories',
            value: '${availableCategories.length}',
            icon: Icons.category,
            color: Colors.orange,
          ),
          _buildStatCard(
            context,
            title: 'Total Recipes',
            value: '${dummyMeals.length}',
            icon: Icons.restaurant_menu,
            color: Colors.amber,
          ),
          _buildStatCard(
            context,
            title: 'Quick Meals (20 mins or less)',
            value: '$_quickMealsCount',
            icon: Icons.timer,
            color: Colors.lightBlue,
          ),
          _buildStatCard(
            context,
            title: 'Simple Complexity Recipes',
            value: '$_simpleMealsCount',
            icon: Icons.check_circle_outline,
            color: Colors.teal,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Dietary Breakdown',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          _buildStatCard(
            context,
            title: 'Vegetarian Meals',
            value: '$_vegetarianCount',
            icon: Icons.eco,
            color: Colors.green,
          ),
          _buildStatCard(
            context,
            title: 'Vegan Meals',
            value: '$_veganCount',
            icon: Icons.spa,
            color: Colors.lightGreen,
          ),
          _buildStatCard(
            context,
            title: 'Gluten-Free Meals',
            value: '$_glutenFreeCount',
            icon: Icons.grain,
            color: Colors.purple,
          ),
          _buildStatCard(
            context,
            title: 'Lactose-Free Meals',
            value: '$_lactoseFreeCount',
            icon: Icons.water_drop,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}