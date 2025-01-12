class UserModel {
  final String? imagePath;
  final String name;
  final String email;

  const UserModel({
    required this.imagePath,
    required this.name,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      imagePath: json['image_path'],
      name: json['name'],
      email: json['email'],
    );
  }
}
