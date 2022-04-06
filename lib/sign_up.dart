import 'package:demo/screens/products/cart_screen.dart';
import 'package:demo/screens/welcome/login.dart';
import 'package:demo/screens/welcome/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
   static const String path = "SignUp";
  int value = 1;

  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 bool isLoading=false;
 bool isHiddenPassword=false;
  bool isDropDownButton = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordControlller = TextEditingController();
  TextEditingController _nameController =TextEditingController();
 

Future signUp() async {
  setState(() {
      isLoading = true;
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordControlller.text);
      var authCredential = userCredential.user;
      print(authCredential!.uid);

      if (authCredential.uid.isNotEmpty) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => LogInScreen()));
      } else {
        Fluttertoast.showToast(msg: "Something is Wrong");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
     setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffC4C4C4),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffC4C4C4),
          leading: IconButton(
              onPressed: () {
              
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/carrot.png",scale: 0.5,)),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const Text("Enter your credentials and continue",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7C7C7C))), //fontWeight: FontWeight.w600,
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Logan Paul",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                    labelText: "Username",
                    labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "loganpaul@gmail.com",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                TextField(
                  obscureText: !isHiddenPassword,
                  controller: _passwordControlller,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 18, color: Colors.grey),
                    suffixIcon: InkWell(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isHiddenPassword=!isHiddenPassword;
                          });
                        },
                        icon: Icon(isHiddenPassword
                            ? Icons.visibility
                            : Icons.visibility_off_rounded),
                      ),
                    ),
                  ),
                ),
                Text(
                    "By continuing you agree to our Terms of Service\nand Privacy Policy.",
                    style: TextStyle(
                      fontSize: 14,
                    )),
                const SizedBox(
                  height: 10,
                ),
        
               isLoading?Center(child: CircularProgressIndicator()): Align(
                  alignment: Alignment.center,
                  child: 
                  ElevatedButton(
                    onPressed: () {
                      signUp();
                      
                    },
                    child: const Text(
                      "Sing Up",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff53B175),
                      onPrimary: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      minimumSize: const Size(364, 67), //////// HERE
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>LogInScreen()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Color(0xff53B175)),
                        ))
                  ],
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}