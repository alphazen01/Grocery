import 'package:flutter/material.dart';

class Beverages extends StatefulWidget {
  const Beverages({ Key? key }) : super(key: key);

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
List<Widget>image=[
    Image.asset("assets/coke.png"),
    Image.asset("assets/sprite.png"),
    Image.asset("assets/sprite.png"),
    Image.asset("assets/tree_top_juice.png"),
    Image.asset("assets/cocacola.png"),
    Image.asset("assets/pepsi.png"),
  ];

   List<String>title=[
    "Diet Coke",
    "Sprite Can",
    "Apple & Grape Juice",
    "Orenge Juice",
    "Coca Cola Can",
    "Pepsi Can "
  ];
   List<String>stitle=[
    "355ml, Price",
    "325ml, Price",
    "2L, Price",
    "2L, Price",
    "325ml, Price",
    "330ml, Price "
  ];
   List<String>dtitle=[
    "\$1.99",
    "\$1.50",
    "\$15.99",
    "\$15.99",
    "\$4.99",
    "\$4.99",
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
          "Beverages",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff181725)
            ),
        ),
        leading: InkWell(
          onTap: (){},
          child: Icon(
            Icons.arrow_back_ios,color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                child:Container(
                  child: Column(
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