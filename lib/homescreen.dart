import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/signup_page.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [Colors.orange.shade900,Colors.orange.shade800,Colors.orange.shade400]
        ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gadget Hub",style: TextStyle(color: Colors.white,fontSize: 40),),
                SizedBox(height: 10,),
                Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 18),),
              ],
            ),
            ),
            SizedBox(height: 20,),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
              ),
              child:Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 60,),
                    Padding(
                      padding:  EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Color.fromRGBO(225, 95,27, 3),
                            blurRadius: 20,
                            offset: Offset(0,10)
                          )]
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email or phone number",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text("Forgot password?",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 40,),


                    InkWell(
                      onTap: (){


                      },
                      child: Container(

                        height: 50,
                        margin:EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange.shade900

                        ),
                        child: Center(
                          child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
                      },
                        child: Text("Create a account",style: TextStyle(color: Colors.orange),)),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),

                              color: Colors.blue


                            ),
                            child: Center(
                              child: Icon(Icons.facebook_outlined,size: 30,color: Colors.white,)
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.black12
                            ),
                            child: Center(
                              child: Image.asset("assets/images/google-icon-2048x2048-czn3g8x8.png",height: 20,),
                            ),
                          ),

                        ),

                      ],
                    )


                  ],
                ),
              ),
            ))


          ],
        ),


      ),
    );
  }
}

