import 'package:demo/bottom_navigation.dart';
import 'package:demo/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CartScreen()
      // home: FavouriteScreen(),
      // home: NavigationScreen(),
      home: WelcomeScreen(),
    )
  );
}

