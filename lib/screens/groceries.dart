import 'package:flutter/material.dart';

class Groceries extends StatefulWidget {
  const Groceries({ Key? key }) : super(key: key);

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  List<Color>clrList=[
   Color(0xffF8A44C).withOpacity(0.10),
   Color(0xff53B175).withOpacity(0.10), 
  ];

  List<Widget>image=[
    Image.asset("assets/beef_bone.png"),
    Image.asset("assets/broiler_chicken.png"),
  ];
   List<Widget>himage=[
    Image.asset("assets/pules.png"),
    Image.asset("assets/rice.png"),
  ];

   List<String>title=[
    "Beef Bone",
    "Broiler Chicken",
  ];
   List<String>stitle=[
    "1kg, Priceg",
    "1kg, Priceg",
  ];
   List<String>dtitle=[
    "\$4.99",
    "\$4.99",
  ];
   List<String>htitle=[
    "Pulses",
    "Rice",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE5E5E5),
     appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        title: Text(
          "Groceries",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff181725)
            ),
        ),
     ),
     body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.separated(
                separatorBuilder: (context,index){
                  return SizedBox(width: 5,);
                },
                itemCount: title.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext, index){
                  return Container(
                    height: 105,
                    width: 250,
                    decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: clrList[index] 
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                      himage[index],
                      SizedBox(width: 15,),
                      Text("${htitle[index]}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                      ],
                    ),
                  );
                }, 
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                itemCount: title.length,
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
                  border: Border.all(color: Colors.black.withOpacity(0.1)),
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