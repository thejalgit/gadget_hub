import 'package:flutter/material.dart';

class Categorieswidget extends StatelessWidget {
  Categorieswidget({Key? key}) : super(key: key);

  List images = [
    "assets/images/mobile2.jpg",
    "assets/images/cpu.jpg",
    "assets/images/g card.jpg",
    "assets/images/headphone.jpeg",
    "assets/images/rysen.webp",
    "assets/images/lap.jpg",
  ];
  List categoryTexts = [
    "Mobile",
    "CPU",
    "Graphics Card",
    "Headphones",
    "Ryzen",
    "Laptop",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < images.length; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    images[i],
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    categoryTexts[i],
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black),
                  ),

                ],
              ),
            )
        ],
      ),
    );
  }
}
