import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/indicator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget>image=[
    Image.asset("assets/beef_bone.png"),
    Image.asset("assets/broiler_chicken.png"),
    Image.asset("assets/banana.png"),
    Image.asset("assets/apple.png"),
    Image.asset("assets/cocacola.png"),
    Image.asset("assets/noodles_purple.png"),
  ];

   List<String>title=[
    "Beef Bone",
    "Broiler Chicken",
    "Organic Bananas",
    "Red Apple",
    "Bell Pepper Red",
    "Egg Noodles",
  ];
   List<String>stitle=[
    "1kg, Priceg",
    "1kg, Priceg",
    "7pcs, Priceg",
    "1kg, Priceg",
    "325ml, Price",
    "2L, Price",
  ];
   List<String>dtitle=[
    "\$4.99",
    "\$4.65",
    "\$3.00",
    "\$4.99",
    "\$7.65",
    "\$15.00",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: [
          Image.asset("assets/carrot.png"),
           Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.location_on),
          Text("Dhaka, Banassre")
            ],
          ),
           TextField(
              decoration: InputDecoration(
                hintText: "Search Store",
                fillColor:Color(0xffE5E5E5),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none
                ),
                focusedBorder:OutlineInputBorder(
                     borderSide:BorderSide(
                       color: Colors.white,
                       width: 2
                     ),
                     borderRadius: BorderRadius.circular(20) 
                     ), 
                prefixIcon: Icon(
                Icons.search,color: Colors.black,
                ),
            ),
            ),
           Expanded(
             child: GridView.builder(
                     itemCount: 6,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
                mainAxisExtent: 190,
              crossAxisSpacing: 9,
              childAspectRatio: 2.5,
              mainAxisSpacing: 8
                     ), 
                     itemBuilder: (context,index){
              return Container(
                     width: double.infinity,
                     decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black.withOpacity(0.1))
                     ),
                     child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                image[index],
                Text(
                  "${title[index]}"
                  ,textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                ),
                ),
                  Text(
                    "${stitle[index]}"
                    ,textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 1,),
                      Text("${dtitle[index]}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: Icon(Icons.add),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff53B175),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)
                            ) 
                          ),
                        ),
                      )
                    ],
                  )
              ],
                     )
                   );
                     }
                   ),
           ),
          
        ],
      ),
    );
  }
}