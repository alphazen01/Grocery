import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({ Key? key }) : super(key: key);

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
            "Enter your mobile number",style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              "Mobile Number",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff7C7C7C)
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
         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){},
       child: Icon(Icons.arrow_forward_ios),
       backgroundColor: Color(0xff53B175),
     )
    );
  }
}