class Reviews {
  final int rating;
  final String description;
  const Reviews({
    required this.rating,
    required this.description,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) {
    return Reviews(
      rating: json['rating'],
      description: json['description'],
    );
  }
}
