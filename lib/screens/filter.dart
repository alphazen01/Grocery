

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterScreen extends StatefulWidget {
  
  const FilterScreen({ Key? key,}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {


bool isTap=false;
Map<String,bool>categories={
 "Eggs":true,
 "Noodles & Pasta":false,
 "Chips & Crips":false,
 "FastFood":false
};
Map<String,bool>brand={
 "Individual Callection":true,
 "Cocola":false,
 "Ifad":false,
 "Kazi Farmas":false
};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        centerTitle: true,
        title: Text(
          "Filters",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        leading:Padding(
          padding: const EdgeInsets.only(left: 15,top: 15),
          child: InkWell(
            onTap: (){},
            child: FaIcon(
              FontAwesomeIcons.times,
              color:Color(0xff181725)
            )
          ),
        )
      ),
      body: Column(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Categories",
                       style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    )
                    ),
                  ),
                  Column(
                    children: categories.keys.map((ItemName) => CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      
                      activeColor: Colors.green,
                      
                      shape: RoundedRectangleBorder(),
                      title: Text(ItemName,),
                      value: categories[ItemName], 
                      onChanged: (bool?value){
                        setState(() {
                          categories[ItemName]=value!;
                        });
                      }
                    )).toList()
                  )
                ],
              ),
                Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Brand",
                 style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700
              )
              ),
            ),
            Column(
              children: brand.keys.map((ItemName) => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                shape: RoundedRectangleBorder(),
                title: Text(ItemName),
                activeColor: Colors.green,
                value: brand[ItemName], 
                onChanged: (bool?value){
                  setState(() {
                    brand[ItemName]=value!;
                   
                  });
                }
              )).toList()
            )
          ],
          ),
            ],
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
                  "Apply Filter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
          ),
        ),
        ),
        ) 
        ],
      ),
    );
  }
}