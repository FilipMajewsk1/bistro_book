class Tablee {
  final int id;
  final String name;
  final int size;

  Tablee({
    required this.id,
    required this.name,
    required this.size,
  });

  factory Tablee.fromJson(Map<String, dynamic> json) => Tablee(
    id: json['id'],
    name: json['name'],
    size: json['size'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'size': size,
  };

}
