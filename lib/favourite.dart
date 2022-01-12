import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({ Key? key }) : super(key: key);

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
                            
                            title: Text(
                              "Sprite Can",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle: Text(
                              "325ml, Price",
                               style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                              ),
                              
                            trailing: FittedBox(
                              fit: BoxFit.fill,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "\$1.50",
                                style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                                  ),
                                  IconButton(
                                  onPressed: (){}, 
                                  icon:  Icon(Icons.arrow_forward_ios,color: Colors.black38,)
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