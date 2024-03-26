import 'package:bistro_book/models/PartialRecipe.dart';

class Recipe {
  final int id;
  final String name;
  final List<int> partialRecipes_ids;

  Recipe({
    required this.id,
    required this.name,
    required this.partialRecipes_ids,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
    id: json['id'],
    name: json['name'],
    partialRecipes_ids: List<int>.from(json['partialRecipes_ids']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'partialRecipes_ids': partialRecipes_ids
  };
}
