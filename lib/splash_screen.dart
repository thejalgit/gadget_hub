
import 'package:flutter/material.dart';
import 'package:untitled3/homescreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return welcomepage();
      },));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/images/splashimage.png"))),
        ),
      ),
    );
  }
}