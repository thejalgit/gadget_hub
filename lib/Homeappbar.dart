import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Settings.dart';
import 'package:untitled3/cartpage.dart';
import 'package:untitled3/categorieswidgets.dart';
import 'package:untitled3/itemappbar.dart';

import 'itemwidgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _provider2classState();
}

class _provider2classState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(5),
          children: [
            DrawerHeader(
                child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/og logo.png",
                      ),
                      scale: 5)),
            )),
            GestureDetector(
              onTap: () {},
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage(),));

                },
                child: ListTile(
                  title: Text("Settings"),
                  hoverColor: Colors.blue,
                  trailing: Icon(Icons.settings),
                ),
              ),
            ),
            ListTile(
              title: Text("Account details"),
              trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Select languge"),
              trailing: Icon(Icons.language_outlined),
            ),
            ListTile(
              title: Text("Notification Settings"),
              trailing: Icon(Icons.edit_notifications),
            ),
            ListTile(
              title: Text("Reviews"),
              trailing: Icon(Icons.rate_review_rounded),
            ),

            ListTile(
              title: Text("Terms and policies"),
              trailing: Icon(Icons.book),
            ),
            ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.logout),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Gadget Hub",
            style: TextStyle(color: Colors.orange, fontSize: 20)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cartpage(),));
                },
                child: Icon(Icons.shopping_bag_outlined)),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //height: 500,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  //search widget
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.topCenter,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "search here...",
                          suffixIcon: Icon(Icons.camera_alt)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text(
                      "categories",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                  ),
                  //categories widgets
                  Categorieswidget(),

                  //items

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "Best selling",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade400),
                    ),
                  ),

                ],
              ),
            ),
          ),
          itemWidgets(),
        ],

      ),

    );
  }
}
