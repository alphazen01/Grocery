import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({ Key? key }) : super(key: key);

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
       padding: const EdgeInsets.symmetric(horizontal: 25,vertical:50 ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
            "Enter your 4-digit code",style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              "Code",style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xff7C7C7C)
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 10),
             child: Material(
                    elevation: 1,
                    color: Color(0xffC4C4C4),
                    child: TextField(
                     decoration: InputDecoration(
                       hintText:"Enter your name", 
                       labelText: "Email",hintStyle: TextStyle(fontSize: 16),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide.none,
                         borderRadius: BorderRadius.circular(20),
                         
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                           color: Color(0xffC4C4C4),
                           width: 2
                         ),
                         borderRadius: BorderRadius.circular(20)
                       )
                     ),
                     
                      
                ),
              ),
           ),
         ],
       ),
     ),
     floatingActionButton: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text(
            "Resend Code",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff53B175)
            ),
          ),
          FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.arrow_forward_ios),
            backgroundColor: Color(0xff53B175),
          )
         ],
        ),
     )
    );
  }
}