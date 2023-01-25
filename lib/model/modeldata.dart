import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String name;
  final String desc;
  final num price;
  final num uynalgan;
  ProductModel(
      {required this.uynalgan,
      required this.name,
      required this.price,
      required this.desc});

  factory ProductModel.fromJson(QueryDocumentSnapshot data) {
    return ProductModel(
      name: data['name'],
      price: data['price'],
      desc: data['desc'],
      uynalgan: data['uynal'],
    );
  }

  toJson() {
    return {"name": name, "desc": desc, "price": price, 'uynal': uynalgan};
  }
}
