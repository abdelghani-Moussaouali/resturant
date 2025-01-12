import 'package:resturantes/Features/store/data/repos/item/customer.dart';
import 'package:resturantes/Features/store/data/repos/item/image.dart';
import 'package:resturantes/Features/store/data/repos/item/menus.dart';
import 'package:resturantes/Features/store/data/repos/item/reviews.dart';

class Itemcategory {
  final int id;
  final String name;
  final String description;
  final int customersId;
  final String email;
  final String phoneNumber;
  final String category;
  final String wilaya;
  final String address;
  final List<Menu> menus;
  final List<Reviews> reviews;
  final List<Image>? image;
  final List<Customer>? customer;

  Itemcategory({
    required this.id,
    required this.name,
    required this.description,
    required this.customersId,
    required this.email,
    required this.phoneNumber,
    required this.category,
    required this.wilaya,
    required this.address,
    required this.image,
    required this.customer,
    required this.menus,
    required this.reviews,
  });

  factory Itemcategory.fromJson(json) => Itemcategory(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        customersId: json['customers_id'],
        email: json['email'],
        phoneNumber: json['phone_number'],
        category: json['category'],
        wilaya: json['wilaya'],
        address: json['address'],
        menus: (json['menu'] as List)
            .map((menus) => Menu.fromJson(menus))
            .toList(),
        reviews: (json['reviews'] as List)
            .map((reviews) => Reviews.fromJson(reviews))
            .toList(),
        image: (json['image'] as List)
            .map((image) => Image.fromJson(image))
            .toList(),
        customer: (json['customer'] as List)
            .map((customer) => Customer.fromJson(customer))
            .toList(),
      );
}
