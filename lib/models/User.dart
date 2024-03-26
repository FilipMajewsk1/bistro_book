class User {
  final int id;
  final String email;
  final String name;
  final Roles role;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    email: json['email'],
    name: json['name'],
    role: Roles.values.firstWhere((e) => e.toString().split('.').last == json['role']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'name': name,
    'role': role.toString().split('.').last,
  };
}

enum Roles { cook, waiter, owner }
