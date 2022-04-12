

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/models/product_model.dart';
import 'package:demo/widgets/indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailsScreen extends StatefulWidget {
  final ProductModel product;
  const DetailsScreen({ Key? key,required this.product }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
 bool isTap1=false;
  bool isTap2=false;
  bool color=true;


Future addToFavourite()async{
    final FirebaseAuth auth=FirebaseAuth.instance;
    var currentUser = auth.currentUser;
    CollectionReference collectionRef=FirebaseFirestore.instance
    .collection("users-favourite-items");
    return collectionRef.doc(currentUser!.email).collection("items").doc().set(
      {
        "name":widget.product.name,
        "price":widget.product.price,
        "image":widget.product.image,
      }
    ).then((value) => print("added to favourite"));
   
  }




 
 final List<String>imageList=[
   "assets/apple.png",
   "assets/apple.png",
   "assets/apple.png",
 ];
   int dcount=0;

  int count=0;

  increaseCount(){
    setState(() {
      count++; 
    });
   
  }

   dcreaseCount(){
   if (count>0) {
       setState(() {
      count--; 
    }); 
   }
     
     
   
   
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
       backgroundColor: Color(0xffC4C4C4),
       appBar: AppBar(
       elevation: 0,
       backgroundColor: Color(0xffC4C4C4),
       leading: IconButton(
         onPressed: (){
           Navigator.pop(context);
         }, 
         icon: Icon(Icons.arrow_back_ios,color: Colors.black,)
      ),
     ),
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             CarouselSlider(
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.network(widget.product.image,fit: BoxFit.contain,);
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                 enlargeCenterPage: false 
                ),
              ),
               CustomIndicator(imageList: imageList,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
              widget.product.name,style: TextStyle(
              fontSize: 24, 
              ),
              ),
             


                 StreamBuilder(
            stream: FirebaseFirestore.instance.collection("users-favourite-items")
            .doc(FirebaseAuth.instance.currentUser!.email)
                .collection("items").where("name",isEqualTo: widget.product.name).snapshots(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              if(snapshot.data==null){
                return Text("");
              }
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child:  IconButton(
                onPressed: (){
                if (snapshot.data.docs.length==0) {
                  addToFavourite();
                } else {
                  Fluttertoast.showToast(msg: "Already added to favourite");
                
                }
               
                }, 
                icon:snapshot.data.docs.length==0?
                 Icon(Icons.favorite_border):Icon(Icons.favorite)
                )
              );
            },

          ),











              ],
             ),
              Text(
              widget.product.quantity,style: TextStyle(
              fontSize: 24,
              color: Color(0xff7C7C7C) 
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Material(
                        color: Color(0xffE5E5E5).withOpacity(0.10),
                        child: IconButton(
                          onPressed: (){
                            dcreaseCount();
                             setState(() {
                               isTap1=true;
                               isTap2=false;
                            }); 
                            
                               
                          }, 
                          icon: Icon(Icons.remove,color:isTap1? Colors.green: Colors.black)
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "$count",
                        style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    SizedBox(width: 20,),
                    ClipOval(
                      child: Material(
                        color: Color(0xffE5E5E5).withOpacity(0.10),
                        child: IconButton(
                          onPressed: (){
                            increaseCount();
                            setState(() {
                              isTap2=true;
                              isTap1=false;
                            });
                          }, 
                          icon: Icon(Icons.add,color:isTap2? Colors.green:Colors.black),
                        ),
                      ),
                    ),
                ],
                ),
                 Text(
                "\$ ${widget.product.price.toString()}",
                style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
            "Product Details",
            style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            ),
            ),
            Transform.rotate(
              angle: 3.1416/2,
              child: IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.arrow_forward_ios,)
                ),
            )
              ],
             ),
            Text(
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",textAlign: TextAlign.left,
            style: TextStyle(
            fontSize: 16,
            color: Color(0xff7C7C7C) 
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
            "Nutritions",
            style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(
              width: 200,
            ),
            Container(
              width: 40,
              height: 18,
              decoration: BoxDecoration(
                color: Color(0xffEBEBEB),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text(
                "100gr",
                style: TextStyle(
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.arrow_forward_ios,)
              )
              ],
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
            "Review",
            style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            ),
            ),
            Row(
              children: [
               RatingBar.builder(
              itemSize: 25,
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,size: 5,
                color: Color(0xffF3603F),
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.arrow_forward_ios,)
            ) 
            ]
            ),
            
              ],
             ),
             SizedBox(height: 10,),
              SizedBox(
            width:double.infinity,
            height: 67,
            child: ElevatedButton(
              onPressed: (){
               
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff53B175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ), 
              child: Text(
              "Add To Cart",
              style: TextStyle(
              color: Colors.white,
              fontSize: 18,
                ),
              ),
              ),
            ),
            SizedBox(height: 25,)
              
           ],
         ),
       ),
     ),
    );
  }

 
}
