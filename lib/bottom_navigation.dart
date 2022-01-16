import 'package:demo/cart_screen.dart';
import 'package:demo/favourite.dart';
import 'package:flutter/material.dart';

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
    Container(
       width: double.infinity,
     height: double.infinity,
      color: Colors.blue,
    ),
     Container(
       width: double.infinity,
     height: double.infinity,
      color: Colors.black,
    ),
    CartScreen(),
     FavouriteScreen(),
    Container(
        width: double.infinity,
     height: double.infinity,
      color: Colors.blue,
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr[selectedIndex],
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
             
             icon: Image.asset("assets/Vector (5).png"),
              label: "Shop",
              ),
               BottomNavigationBarItem(
               icon: Image.asset("assets/Group 3.png"),
              label: "Explore",
              ),
               BottomNavigationBarItem(
              icon:Image.asset("assets/Vector (6).png"),
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