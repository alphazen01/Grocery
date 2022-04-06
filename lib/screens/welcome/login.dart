import 'package:demo/screens/products/home.dart';
import 'package:demo/sign_up.dart';
import 'package:demo/widgets/bottom_navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LogInScreen extends StatefulWidget {
 
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isLoading=false;
  bool isHiddenPassword=false;
   TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future signIn() async {
    setState(() {
      isLoading=true;
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
      email: _emailController.text, 
      password: _passwordController.text
      );
      var authCredential = userCredential.user;
      print(authCredential!.uid);

      if (authCredential.uid.isNotEmpty) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => NavigationScreen()));
      } else {
        Fluttertoast.showToast(msg: "Something is Wrong");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: 'Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
    isLoading=false;
  }

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
                  controller: _emailController,
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
                  controller: _passwordController,
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
              // isLoading
              //       ? CircularProgressIndicator()
              //       : Container(
              //           width: double.infinity,
              //           height: 48,
              //           decoration: BoxDecoration(
              //               color: Colors.black,
              //               borderRadius: BorderRadius.circular(10)),
              //           child: TextButton(
              //             onPressed: () {
              //               signIn();
              //             },
              //             child: Text(
              //               "Sign up",
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 17,
              //               ),
              //             ),
              //           ),
              //         ),






             isLoading?Center(child: CircularProgressIndicator()):
              SizedBox(
            width:double.infinity,
            height: 67,
            child: Container(
               child: ElevatedButton(
                    onPressed: (){
                      signIn();

                    },
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xff53B175),
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?"),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
                      }, 
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