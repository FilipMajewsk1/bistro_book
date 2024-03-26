import 'package:bistro_book/models/Ingredient.dart';
import 'package:bistro_book/models/Recipe.dart';

class PartialRecipe {
  final int id;
  final int recipe_id;
  final String name;
  final List<int> ingredients_ids;
  final String steps;
  final int quantity;

  PartialRecipe({
    required this.id,
    required this.recipe_id,
    required this.name,
    required this.ingredients_ids,
    required this.steps,
    required this.quantity,
  });

  factory PartialRecipe.fromJson(Map<String, dynamic> json) => PartialRecipe(
    id: json['id'],
    recipe_id: json['recipe'],
    name: json['name'],
    ingredients_ids: List<int>.from(json['ingredients_ids']),
    steps: json['steps'],
    quantity: json['quantity'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'recipe_id': recipe_id,
    'name': name,
    'ingredients_ids': ingredients_ids,
    'steps': steps,
    'quantity': quantity,
  };
}
