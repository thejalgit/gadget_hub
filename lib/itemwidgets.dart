import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/itemappbar.dart';



class itemWidgets extends StatelessWidget {
  itemWidgets({Key? key}) : super(key: key);

  List images = [
    "assets/images/mobile2.jpg",
    "assets/images/gaminghd.png",
    "assets/images/geforce.png",
    "assets/images/s23.png",
    "assets/images/applewatch.png",
    "assets/images/oneplus.png",
  ];




  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.56,
      //it disable the scroll functionality of gridview
      //then it will scroll in list view of home page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < images.length; i++)
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => itemPage(),));

            },
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade400,
                        ),
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child:Image.asset(images[i])
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "iphones"
                          " ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Green/256",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\45000",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.orange,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
