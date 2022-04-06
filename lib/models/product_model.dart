import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String id,name,image;
  final int price;
  ProductModel({
    required this.id,
    required this.name,

    required this.image,
    required this.price
  });
Map<String,dynamic>toMap()=>{
"id":id,
"name":name,
"price":price,
"image":image 
};

factory ProductModel.fromMap(QueryDocumentSnapshot data, String id)=>ProductModel(
  id: id, 
  name: data["products-name"], 
  image: data["products-image"],  
  price: data["products-price"] 
  );








}