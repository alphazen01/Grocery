import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

 List<Widget>image=[
    Image.asset("assets/capcicum.png",),
    Image.asset("assets/egg_red.png",),
    Image.asset("assets/banana.png"),
    Image.asset("assets/ginger.png"),
  ];
   List<String>title=[
    "Bell Pepper Red",
    "Egg Chicken Red",
    "Organic Bananas",
    "Ginger",
  ];
   List<String>stitle=[
    "1kg, Price",
    "4pcs, Price",
    "12kg, Price",
    "250gm, Price",

  ];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          shadowColor: Colors.grey.withOpacity(0.50),
          title: Text(
            "My Cart",
            style: TextStyle(
            fontSize: 20,
            color: Color(0xff181725)
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context,int){
                  return Divider(
                    thickness: 1,
                    color:Colors.grey.withOpacity(0.30)
                  );
                },
                scrollDirection: Axis.vertical,
                itemCount: title.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext, int index){
                  return SizedBox(
                    height: 100,
                    child: ListTile(
                      leading: Container(
                        height: double.infinity,
                        child: image[index]
                      ),
                      minLeadingWidth: 75,
                      isThreeLine: true,
                      title: Text(
                        "${title[index]}",
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
                              "${stitle[index]}",
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
                               child: Material(
                                 child: IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(Icons.remove,color: Colors.black),
                                  ),
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
                               child: Material(
                                 child: IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(Icons.add,color: Colors.black),
                                  ),
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
                             ClipOval(
                               child: Material(
                                 child: IconButton(
                                  onPressed: (){}, 
                                  icon:Icon(Icons.close),
                                  ),
                               ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                width:double.infinity,
                height: 67,
                child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff53B175),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                      ), 
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                            "Go to Checkout",
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Text(
                            "\$12.96",
                             style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                          ),
                            
                          )
                          ],
                        ),
                      ),
                      ),
              ),
            ),
        SizedBox(height: 15,)
        
        ],
        ),
      );
  }
}