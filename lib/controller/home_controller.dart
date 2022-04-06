import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/models/product_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier{

List<ProductModel>products = [];

fetchProducts()async{

  var firestoreInstance = FirebaseFirestore.instance;
  QuerySnapshot qn = await firestoreInstance.collection("products").get();
  products.clear();

  for (int i = 0; i < qn.docs.length; i++) {
    products.add(
      ProductModel.fromMap(qn.docs[i], qn.docs[i].id)
    );
  }
  notifyListeners();
}




}