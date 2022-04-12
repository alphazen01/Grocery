import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/widgets/custom_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({ Key? key }) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}
class _FavouriteScreenState extends State<FavouriteScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          elevation: 0.5,
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Colors.grey.withOpacity(0.50),
          title: Text(
            "Favorurite",
            style: TextStyle(
            fontSize: 20,
            color: Color(0xff181725)
            ),
          ),
        ),
       body:SafeArea(
        child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("users-favourite-items")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection("items").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){

          if(snapshot.hasError){
            return Center(child: Text("something is wrong"));
          }
          return ListView.builder(
            itemCount:snapshot.data==null?0: snapshot.data!.docs.length,
            itemBuilder: ( context,index){
            
              DocumentSnapshot documentSnapshot=snapshot.data!.docs[index];
              return Card(
                elevation: 2,
                child: ListTile(
                  leading: Image.network(documentSnapshot["image"]),
                  // leading: Text(documentSnapshot["name"]),
                  title:Text(documentSnapshot["name"]),
                  subtitle:  Text("\$ ${documentSnapshot["price"]}",
                  style: TextStyle(color: Colors.red),), 
                
                  trailing: GestureDetector(
                    onTap: (){
                      showDialog(
                       barrierDismissible: false,
                      context: context, 
                      builder: (BuildContext context){
                        return CustomAlert(
                       onTap: (){
                        FirebaseFirestore.instance.collection("users-favourite-items")
                      .doc(FirebaseAuth.instance.currentUser!.email)
                      .collection("items").doc(documentSnapshot.id).delete();
                       },
                        );
                      }
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                    child: Icon(Icons.remove_circle)),
                  ),
                ),
              );
            }
          );
        },
      )
      )
      );
  }
}