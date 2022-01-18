import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({ Key? key }) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}
//  Sprite Can,
//   Diet Coke,
//   Apple & Grape Juice,
//   Coca Cola Can,
//   Pepsi Can 
class _FavouriteScreenState extends State<FavouriteScreen> {
  List<String>title=[
    "Sprite Can",
    "Diet Coke",
    "Apple & Grape Juice",
    "Coca Cola Can",
    "Pepsi Can "
  ];
   List<String>stitle=[
    "325ml, Price",
    "355ml, Price",
    "2L, Price",
    "325ml, Price",
    "330ml, Price "
  ];
  List<Widget>image=[
    Image.asset("assets/sprite.png"),
    Image.asset("assets/coke.png"),
    Image.asset("assets/tree_top.png"),
    Image.asset("assets/cocacola.png"),
    Image.asset("assets/pepsi.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Colors.grey.withOpacity(0.50),
          title: Text(
            "Favorurite",
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
                      
                      title: Text(
                        "${title[index]}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      subtitle: Text(
                        "${stitle[index]}",
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
                            ClipOval(
                              child: Material(
                                child: IconButton(
                                onPressed: (){}, 
                                icon:  Icon(Icons.arrow_forward_ios,color: Colors.black38,)
                                ),
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
                      child: Text(
                      "Add All To Cart",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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