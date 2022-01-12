import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor:  Color(0xffE5E5E5),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffE5E5E5),
          title: Text(
            "Favorurite",
            style: TextStyle(
            fontSize: 20,
            color: Color(0xff181725)
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color:  Color(0xffE5E5E5),
                    height: 440,
                    width: double.infinity,
                    child: ListView.separated(
                      separatorBuilder: (context,int){
                        return Divider(
                          thickness: 2,
                          color:Colors.grey.withOpacity(0.50)
                        );
                      },
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext, int){
                        return SizedBox(
                          height: 100,
                          child: ListTile(
                            leading: Container(
                              height: double.infinity,
                              child: Image.asset("assets/pngfuel 13.png")
                            ),
                            minLeadingWidth: 75,
                            isThreeLine: true,
                            title: Text(
                              "Sprite Can",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 140),
                                  child: Text(
                                    "325ml, Price",
                                     style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    ClipOval(
                                     child: IconButton(
                                        onPressed: (){}, 
                                        icon: Icon(Icons.remove,color: Colors.black),
                                      ),
                                   ),
                                    Text(
                                      "1",
                                       style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                   ClipOval(
                                     child: IconButton(
                                        onPressed: (){}, 
                                        icon: Icon(Icons.add,color: Colors.black),
                                      ),
                                   ),
                                  ],
                                )
                              ],
                            ),
                            trailing: FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                   IconButton(
                                  onPressed: (){}, 
                                  icon:ClipOval(
                                    child: Material(
                                      child: InkWell(
                                        onTap: (){},
                                        child: Image.asset("assets/Group 6862.png")
                                      ),
                                    ),
                                  )
                                  ),
                                  Text(
                                    "\$1.50",
                                style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                                  ),
                                 
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 67,
                    decoration: BoxDecoration(
                      color:Color(0xff53B175),
                      borderRadius: BorderRadius.circular(19)
                    ),
                    child:  TextButton(
                          onPressed: (){
                          
                          }, 
                          child:  Text(
                        "Add All To Cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                ),
              ),
              ),
              ) 
                ],
              ),
               
            ],
          ),
        ),
      );
  }
}