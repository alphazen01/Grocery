import 'package:demo/bottom_navigation.dart';
import 'package:demo/carosel.dart';
import 'package:demo/login.dart';
import 'package:demo/otp.dart';
import 'package:demo/screens/beverage.dart';
import 'package:demo/screens/filter.dart';
import 'package:demo/screens/find_products.dart';
import 'package:demo/screens/groceries.dart';
import 'package:demo/screens/search.dart';
import 'package:demo/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CartScreen()
      // home: FavouriteScreen(),
      // home: NavigationScreen(),
      // home: WelcomeScreen(),
      // home: FilterScreen(),
      // home: FindProducts(),
      // home: Beverages(),
      // home: Groceries(),
      // home: SearchScreen(),
      // home: LogInScreen(),
      // home: OtpScreen(),
      home: CaroselScreen(),
    )
  );
}

