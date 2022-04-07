import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String id,name,image,quantity;
  final double price;
  ProductModel({
    required this.id,
    required this.name,

    required this.image,
    required this.price,
    required this.quantity
  });
Map<String,dynamic>toMap()=>{
"id":id,
"name":name,
"price":price,
"image":image,
"quantity":quantity 
};

factory ProductModel.fromMap(QueryDocumentSnapshot data, String id)=>ProductModel(
  id: id, 
  name: data["products-name"], 
  image: data["products-image"],  
  price: data["products-price"],
  quantity: data["products-quantity"] 
  );








}