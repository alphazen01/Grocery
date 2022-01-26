import 'package:demo/account.dart';
import 'package:demo/screens/cart_screen.dart';
import 'package:demo/screens/favourite.dart';
import 'package:demo/screens/filter.dart';
import 'package:demo/screens/find_products.dart';
import 'package:demo/screens/search.dart';
import 'package:demo/welcome.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({ Key? key, }) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex=3;
  
  List<Color>clr=[
    Colors.red,
    Colors.black,
    Colors.red,
    Colors.red,
    Colors.red,
    
  ];
  List<Widget>screens=[
    SearchScreen(),
    FindProducts(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr[selectedIndex],
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
             
             icon:Icon(Icons.store_mall_directory_rounded),
              label: "Shop",
              ),
               BottomNavigationBarItem(
               icon: Icon(Icons.search),
              label: "Explore",
              ),
               BottomNavigationBarItem(
              icon:FaIcon(FontAwesomeIcons.shoppingCart),
              label: "Cart",
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: "Favourite",  
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account",
              ),
          
        ],
        
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor:Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Colors.green
        ),
       
        onTap: (int index){
          setState(() {
            selectedIndex=index;
            
            
          });
        },
      ),
    );
  }
}