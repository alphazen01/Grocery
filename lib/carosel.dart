import 'package:flutter/material.dart';

class CaroselScreen extends StatefulWidget {
 
  @override
  State<CaroselScreen> createState() => _CaroselScreenState();
}

class _CaroselScreenState extends State<CaroselScreen> {
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
         onPressed: (){}, 
         icon: Icon(Icons.arrow_back_ios,color: Colors.black,)
      ),
     ),
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
            "Naturel Red Apple",style: TextStyle(
            fontSize: 24, 
            ),
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite_border)
              )
            ],
           ),
            Text(
            "1kg, Price",style: TextStyle(
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
                        }, 
                        icon: Icon(Icons.remove,color: Colors.black),
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
                        }, 
                        icon: Icon(Icons.add,color: Colors.black),
                      ),
                    ),
                  ),
              ],
              ),
               Text(
              "\$4.99",
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
          "Product Detail",
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
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.arrow_forward_ios,)
            )
            ],
           ),
            SizedBox(
          width:double.infinity,
          height: 67,
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              primary: Color(0xff53B175),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ), 
            child: Text(
            "Add All To Cart",
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
    );
  }
}