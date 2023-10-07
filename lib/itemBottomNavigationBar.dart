import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemnavigationBar extends StatelessWidget {
  const itemnavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0,3),
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(CupertinoIcons.cart),
            InkWell(
              onTap: (){},
              child: Text("Add to Cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Spacer(),
            Icon(Icons.shopping_bag_outlined),
            InkWell(
              onTap: (){},
              child: Text("Buy Now",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange.shade900
              ),),
            )
          ],
        ),
      ),

    );
  }
}
