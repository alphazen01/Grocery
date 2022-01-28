import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
 
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isHiddenPassword=true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffC4C4C4),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(child: Image.asset("assets/carrot.png",scale: 0.5,)),
              Text(
                "Loging",
                style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),
              ),
               Text(
                "Enter your emails and password",
                 style: TextStyle(fontSize: 16,color: Color(0xff7C7C7C)),
              ),
             
              Material(
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
               Material(
                elevation: 1,
                color: Color(0xffC4C4C4),
                child: TextField(
                  keyboardType: TextInputType.text,
                 obscureText: !isHiddenPassword,
                 obscuringCharacter: "•",
                 decoration: InputDecoration(
                   hintText:"Enter your Password", 
                   labelText: "Password",hintStyle: TextStyle(fontSize: 16),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide.none,
                     borderRadius: BorderRadius.circular(20),
                     
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Color(0xffC4C4C4),
                       width: 2
                     ),
                     borderRadius: BorderRadius.circular(20),
                     
                   ),
                   suffixIcon: IconButton(
                     onPressed: (){
                       setState(() {
                         isHiddenPassword=!isHiddenPassword;
                       });
                     }, 
                     icon:Icon(
                    isHiddenPassword? Icons.visibility
                    :Icons.visibility_off_rounded,
                    )
                  )
                 ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",style: TextStyle(fontSize: 16),
                  ),
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
                  "Log In",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                    ),
                  ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?"),
                    TextButton(
                      onPressed: (){}, 
                      child: Text(
                      "Singup",style: TextStyle(color: Color(0xff53B175),
                      fontSize: 20
                      ),
                    ),
                      
                    )
                  ],
                ),
                SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}