import 'package:flutter/material.dart';

class FindProducts extends StatefulWidget {
  const FindProducts({ Key? key }) : super(key: key);

  @override
  State<FindProducts> createState() => _FindProductsState();
}

class _FindProductsState extends State<FindProducts> {

  List<Color>clrList=[
    Color(0xff53B175).withOpacity(0.10),
    Color(0xffF8A44C).withOpacity(0.10),
    Color(0xffF7A593).withOpacity(0.25),
    Color(0xffD3B0E0).withOpacity(0.25),
    Color(0xffFDE598).withOpacity(0.25),
    Color(0xffB7DFF5).withOpacity(0.25),
   
  ];
  List<Widget>image=[
    Image.asset("assets/fresh_fruits.png"),
    Image.asset("assets/cooking_oil.png"),
    Image.asset("assets/meat_fish.png"),
    Image.asset("assets/bakery_snacks.png"),
    Image.asset("assets/dairy_eggs.png"),
    Image.asset("assets/beverages.png"),
  ];
  List<String>title=[
    "Frash Fruits  & Vegetable",
    "Cooking Oil& Ghee",
    "Meat & Fish",
    "Bakery & Snacks",
    "Dairy & Eggs",
    "Beverages"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        centerTitle: true,
        title: Text(
          "Find Products",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff181725)
            ),
        ),
      ),
      body: Column(
        children: [
           TextField(
            decoration: InputDecoration(
              hintText: "Search Store",
              fillColor: Color(0xffF2F2F7),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: Colors.blue
                ),
              ),
              focusedBorder:OutlineInputBorder(
                   borderSide:BorderSide(
                     color: Colors.white,
                     width: 2
                   ),
                   borderRadius: BorderRadius.circular(20) 
                   ), 
               
              prefixIcon: Icon(Icons.search,color: Colors.black,)
          )
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                   mainAxisExtent: 190,
                  crossAxisSpacing: 8,
                  childAspectRatio: 2.5,
                  mainAxisSpacing: 8
                ), 
                itemBuilder: (context,index){
                  return Container(
                width: double.infinity,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color:clrList[index]
                ),
                child:Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      image[index],
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Text(
                          "${title[index]}"
                          ,textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18
                        ),
                        ),
                      )
                    ],
                  ),
                )
              );
                }
              ),
            ),
          )
        ],
      ),
    );
  }
}