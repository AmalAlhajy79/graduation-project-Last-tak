class Classification {
  final int id;
  final String name;
  final String category;

  Classification({required this.id, required this.name, required this.category});

  factory Classification.fromJson(Map<String, dynamic> json) {
    return Classification(
      id: json['id'],
      name: json['name'],
      category: json['category'],
    );
  }
}
