import 'package:resturantes/Features/store/data/repos/item/item_category.dart';

class Item {
  final int? count;
  final List<Itemcategory>? items;

  const Item({this.count, this.items});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      count: json['count'],
      items: (json['items'] as List)
          .map((item) => Itemcategory.fromJson(item))
          .toList(),
    );
  }
}
