import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled3/BottomNavigationbar.dart';
import 'Homeappbar.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  int pageindex = 0;

  final pgc = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: PageView(
        controller: pgc,
        children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.03),
                child: Row(
                  children: [
                    Icon(
                      Icons.more_vert,
                      size: screenWidth * 0.07,
                      color: Colors.orange.shade400,
                    )
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.7,
                padding: EdgeInsets.only(top: screenHeight * 0.015),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(screenWidth * 0.1),
                    topLeft: Radius.circular(screenWidth * 0.1),
                  ),
                ),
                child: ListView.builder(
                  itemCount: 2, // Change the number of items as needed
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenHeight * 0.11,
                      margin: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.03,
                          vertical: screenHeight * 0.01),
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      ),
                      child: Row(
                        children: [
                          Radio(
                            value: index,
                            groupValue: null,
                            // You should manage this value in your app's state
                            activeColor: Colors.orange.shade400,
                            onChanged: (index) {
                              // Handle radio button selection here
                            },
                          ),
                          Container(
                            height: screenHeight * 0.15,
                            width: screenWidth * 0.15,
                            margin: EdgeInsets.only(right: screenWidth * 0.03),
                            child: Image.asset("assets/images/s23.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.01),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Product title $index",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange.shade400,
                                  ),
                                ),
                                Text(
                                  "25000",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange.shade400,
                                  ),
                                )
                                // Add more content here
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.005),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(screenWidth * 0.01),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(screenWidth * 0.05),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: screenWidth * 0.1,
                                            )
                                          ]),
                                      child: Icon(
                                        CupertinoIcons.plus,
                                        size: screenWidth * 0.03,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                                      child: Text(
                                        "01",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange.shade400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(screenWidth * 0.01),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(screenWidth * 0.05),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: screenWidth * 0.1,
                                            )
                                          ]),
                                      child: Icon(
                                        CupertinoIcons.minus,
                                        size: screenWidth * 0.03,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          //BottomBar()
        ],
      ),
    );
  }
}
