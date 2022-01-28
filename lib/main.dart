import 'package:demo/account.dart';
import 'package:demo/bottom_navigation.dart';
import 'package:demo/carosel.dart';
import 'package:demo/home.dart';
import 'package:demo/login.dart';
import 'package:demo/number.dart';
import 'package:demo/otp.dart';
import 'package:demo/screens/beverage.dart';
import 'package:demo/screens/cart_screen.dart';
import 'package:demo/screens/filter.dart';
import 'package:demo/screens/find_products.dart';
import 'package:demo/screens/search.dart';
import 'package:demo/sign_in.dart';
import 'package:demo/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CartScreen()
      // home: FavouriteScreen(),
      home: NavigationScreen(),
      // home: WelcomeScreen(),
      // home: FilterScreen(),
      // home: FindProducts(),
      // home: Beverages(),
      // home: HomeScreen(),
      // home: SearchScreen(),
      // home: LogInScreen(),
      // home: OtpScreen(),
      // home: CaroselScreen(),
      // home: AccountScreen(),
      // home: SignInScreen(),
      // home: NumberScreen(),
      
    )
  );
}

