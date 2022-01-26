import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
    child: Column(
      children: [
        ListTile(
          title: Text(
            "Checkout",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
            ),
         ),
         trailing: Icon(Icons.close,color: Colors.black,),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.30),
          thickness: 1,
        ),
         ListTile(
          title: Text(
            "Delivery",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
            ),
         ),
         trailing:Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             Text(
               "Select Method",
           style: TextStyle(
           fontSize: 16,
           fontWeight: FontWeight.bold
         ),
         ),
         SizedBox(width: 10,),
           Icon(Icons.arrow_forward_ios,color: Colors.black,),
           ],
         ),
        ),
        Divider(
          indent: 20,
          color: Colors.grey.withOpacity(0.30),
          thickness: 1,
        ),
         ListTile(
          title: Text(
            "Pament",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
            ),
         ),
         trailing:  Row(
           mainAxisSize: MainAxisSize.min,
           children: [
            Image.asset("assets/payment_card.png"),
            SizedBox(width: 10,),
             Icon(Icons.arrow_forward_ios,color: Colors.black,),
           ],
         ),
        ),
        Divider(
          indent: 20,
          color: Colors.grey.withOpacity(0.30),
          thickness: 1,
        ),
         ListTile(
          title: Text(
            "Promo Code",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
            ),
         ),
         trailing:  Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             Text(
               "Pick discount",
           style: TextStyle(
           fontSize: 16,
           fontWeight: FontWeight.bold
         ),
         ),
         SizedBox(width: 10,),
           Icon(Icons.arrow_forward_ios,color: Colors.black,),
           ],
         ),
        ),
        Divider(
          indent: 20,
          color: Colors.grey.withOpacity(0.30),
          thickness: 1,
        ),
         ListTile(
          title: Text(
            "Total Cost",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
            ),
         ),
         trailing: Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             Text(
               "\$13.97",
           style: TextStyle(
           fontSize: 16,
           fontWeight: FontWeight.bold
         ),
         ),
         SizedBox(width: 10,),
           Icon(Icons.arrow_forward_ios,color: Colors.black,),
           ],
         ),
        ),
        Divider(
          indent: 20,
          color: Colors.grey.withOpacity(0.30),
          thickness: 1,
        ),
          Padding(
           padding: const EdgeInsets.only(left: 15),
           child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "By placing an order you agree to our",
              style: TextStyle(
                fontSize: 16
              ),
            ),
            Row(
              children: [
                Text(
                  "Terms",
                 style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
               ),
               SizedBox(
                 width: 10,
               ),
                Text(
                  "And",
                 style: TextStyle(
                fontSize: 16
              ),
                 ),
                  SizedBox(
                 width: 10,
               ),
                Text(
                  "Conditions",
                 style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
               ),
              ],
            )
          ],
        )
         ),
         SizedBox(height: 25,),
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
                     "Place Order",
                     style: TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                       ),
                     ),
                     ),
             ),
           ),
           SizedBox(height: 25,)
      ],
    ),
    );
  }
}