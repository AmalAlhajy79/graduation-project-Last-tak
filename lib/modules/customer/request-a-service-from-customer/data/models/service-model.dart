class Service {
  final int id;
  final String name;
  final String description;
  final String serviceImage;
  final double servicePrice;

  Service({
    required this.id,
    required this.name,
    required this.description,
    required this.serviceImage,
    required this.servicePrice,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      serviceImage: json['service_image'],
      servicePrice: json['service_price'].toDouble(),
    );
  }
}

