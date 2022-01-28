import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  
    final List icon = [
    Icon(Icons.shopping_bag_outlined),
    Icon(Icons.details),
    Icon(Icons.location_on),
    Icon(Icons.credit_card),
    Icon(Icons.card_membership),
    Icon(Icons.notifications_none_outlined),
    Icon(Icons.help_outline),
    Icon(Icons.info_outline)
  ];

  final List title = [
    "Orders",
    "My Details",
    "Delivery Address",
    "Payment Methods",
    "Promo Card",
    "Notifications",
    "Help",
    "About"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 64,
                      width: 64,
                      child: Image.asset("assets/profile_avatar.png"),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Parvej Mahmud",
                            style: TextStyle(
                              fontSize: 18
                            ),
                          ),
                          Icon(Icons.edit,color: Colors.green,)
                        ],
                      ),
                      Text(
                        "parvejmahmud555@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7C7C7C)
                        ),
                      ),
    
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Divider(),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: ( context, index){
                    return Divider();
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: title.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: icon[index],
                      title: Text(title[index]),
                      trailing: Icon(Icons.arrow_forward_ios),
                    );
                  },  
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.arrow_forward,color: Color(0xff53B175)),
                      TextButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                               primary: Color(0xffF2F3F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              )
                            ), 
                            child: Text(
                            "Log Out",
                            style: TextStyle(
                            color:Color(0xff53B175),
                            fontSize: 18,
                            
                              ),
                            ),
                        ),
                    ],
                  ),
                ),
              ),
                SizedBox(height: 25,)
            ],
          ),
        ),
        
      ),
    );
  }
}