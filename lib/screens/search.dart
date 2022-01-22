import 'package:flutter/material.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
 List<Widget>image=[
    Image.asset("assets/egg_red.png"),
    Image.asset("assets/egg_white.png"),
    Image.asset("assets/pasta.png",scale: 1.60,),
    Image.asset("assets/noodles_red.png",scale: 1.75,),
    Image.asset("assets/mayonnais.png",scale: 1.75,),
    Image.asset("assets/noodles_purple.png"),
  ];

   List<String>title=[
    "Egg Chicken Red",
    "Egg Chicken White",
    "Egg Pasta ",
    "Egg Noodles",
    "Mayonnais Eggless",
    "Egg Noodles"
  ];
   List<String>stitle=[
    "4pcs, Price",
    "180g, Price",
    "30gm, Price",
    "2L, Price",
    "2L, Price",
    "180g, Price"
  ];
   List<String>dtitle=[
    "\$1.99",
    "\$1.50",
    "\$15.99",
    "\$15.99",
    "\$20.99",
    "\$15.99",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        
        body: Column(
          children: [
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
                 
                prefixIcon: Icon(Icons.search,color: Colors.black,),
                suffixIcon:IconButton(
                onPressed: (){}, 
                icon:Icon(Icons.close,color: Color(0xffB3B3B3))
            ), 
            ),
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
      ),
    );
  }
}