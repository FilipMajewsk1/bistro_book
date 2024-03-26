class MenuItem {
  final int id;
  final String name;
  final int price;
  final List<int> allergenesIds;
  final MenuSections section;

  MenuItem({
    required this.id,
    required this.name,
    required this.price,
    required this.allergenesIds,
    required this.section,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
    id: json['id'],
    name: json['name'],
    price: json['price'],
    allergenesIds: List<int>.from(json['allergenes_ids']),
    section: MenuSections.values[json['section']],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'price': price,
    'allergenes_ids': allergenesIds,
    'section': section.index,
  };
}


enum MenuSections { starter, mainCourse, dessert }
