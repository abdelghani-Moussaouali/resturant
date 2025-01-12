class Image {
  final String image;
  const Image({required this.image});

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      image: json['image'],
    );
  }
}
