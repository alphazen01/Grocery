import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
       body: Container(
         width: double.infinity,
         decoration: BoxDecoration(
           image: DecorationImage(
             image:AssetImage("assets/welcom.png"),
             fit: BoxFit.fill
            ),
         ),
         child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center, 
             children: [
               Image.asset("assets/carrot.png",color: Colors.white,),
                Container(
                width: 253,
                height: 100,
                child:Text("Welcome to our store",textAlign: TextAlign.left,
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 48
               ),
               )
              )
               
              
             ],
           ),
         ), 
        ),
      ),
    );
  }
}