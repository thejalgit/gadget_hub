import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/settings_tileData.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              const settingsTiledata(
                color: Colors.blue,
                icon: Icons.person_outline,
                title: "Accounts",
              ),
              const SizedBox(height: 40,),
              const settingsTiledata(
                color: Colors.red,
                icon: Icons.shopping_bag_outlined,
                title: "Orders",
              ),
              const SizedBox(height: 40,),
              const settingsTiledata(
                color: Colors.green,
                icon: Icons.phonelink_setup,
                title: "Setup",
              ),
              const SizedBox(height: 40,),
              const settingsTiledata(
                color: Colors.black,
                icon: Icons.dark_mode,
                title: "Dark mode",
              ),


            ],
          ),
        ),
      ),
    );
  }
}
