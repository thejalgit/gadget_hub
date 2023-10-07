import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Homeappbar.dart';

import 'cartpage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int pageindex =1;

  final page =PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: page,
        onPageChanged: (index){
          setState(() {
            pageindex = index;
          });
          // page.jumpToPage(index);
        },
        children: [
          Cartpage(),
          HomePage(),
          HomePage(),

        ],
      ),
      bottomNavigationBar:  CurvedNavigationBar(
        index: pageindex,
        backgroundColor: Colors.transparent,
        onTap: (index){
          setState(() {
            pageindex = index;
          });
          page.jumpToPage(index);
        },
        color: Colors.orange.shade400,
        height: 50,
        animationDuration: Duration(milliseconds: 100),
        items: [
          InkWell(
            onTap: () {

            },
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
          ),
          Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),

    );
  }
}
