import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffC4C4C4),
      extendBodyBehindAppBar: true,
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset("assets/mask_group.png",scale: 0.75,),  
                  Positioned(
                    top: 20,
                    left: 370,
                    child: Transform.rotate(
                      angle: 70*3.1416/60,
                      child: Row(
                        children: [
                          Image.asset("assets/carrot.png",scale: 1.5,),
                          SizedBox(width: 5,),
                          Text(
                            "nectar",
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ), 
                        ],
                      ),
                    ),
                  ) 
                ],
              ),
               Container(
                 width: 222,
                 height: 63,
                 child: Text(
                  "Get your groceries with nectar",
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
              ),
               ),
               InternationalPhoneNumberInput(
                 countrySelectorScrollControlled:true ,
                 onInputChanged: (value){},
                 formatInput: false,
                 inputBorder: UnderlineInputBorder(),
                 selectorConfig: SelectorConfig(
                   showFlags: true,
                   selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  useEmoji: true
                 ),
                ),
              SizedBox(height: 40,),
              Center(
                child: Text(
                  "Or connect with social media",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff828282)
                  ),
                ),
              ),
              SizedBox(height: 40,),
              SizedBox(
            width:double.infinity,
            height: 67,
            child: ElevatedButton.icon(
            icon: FaIcon(FontAwesomeIcons.google),
            label: Text("Continue with Google"),
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              primary: Color(0xff5383EC),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
              )
            ), 
            ),
          ),
            SizedBox(height: 25,),
            SizedBox(
            width:double.infinity,
            height: 67,
            child: ElevatedButton.icon(
            icon: Icon(Icons.facebook_sharp),
            label: Text("Continue with Facebook"),
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              primary: Color(0xff4A66AC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ), 
            ),
          ),
            SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  }
}