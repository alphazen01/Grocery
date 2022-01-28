import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
       body: Stack(
         children: [
           Container(
             width: double.infinity,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image:AssetImage("assets/welcom.png"),
                 fit: BoxFit.fill
                ),
             ),
             child: Container(
               child: Padding(
                 padding: const EdgeInsets.only(top: 300),
                 child: Column(
                   children: [
                     Image.asset("assets/carrot.png",color: Colors.white,),
                      Text(
                        "Welcome",
                       style: TextStyle(
                       color: Colors.white,
                       fontSize: 48
                     ),
                     ),
                     Text(
                       " to our store",
                       style: TextStyle(
                       color: Colors.white,
                       fontSize: 48
                      )
                     ),
                     Text(
                       "Ger your groceries in as fast as one hour",
                        style: TextStyle(
                       color: Colors.white,
                       fontSize: 16
                      )
                      ),
                      SizedBox(height: 20,),
                     Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SizedBox(
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
                          "Get Started",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                            ),
                          ),
                          ),
                  ),
                ),
                SizedBox(height: 15,)
                   ],
                 ),
               ),
             ), 
            ),
         ],
       ),
      ),
    );
  }
}