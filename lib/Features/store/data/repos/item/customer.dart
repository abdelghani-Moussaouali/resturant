

class Customer {
  final String? name;
  final String? email;
  final String? imagePath;

  Customer({required this.name, required this.email, required this.imagePath});
  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      name: json['name'],
      email: json['email'],
      imagePath: json['image_path'] ,
    );
  }
}
