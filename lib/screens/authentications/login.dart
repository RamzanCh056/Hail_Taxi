import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_carride/screens/authentications/signup.dart';
import 'package:grab_carride/screens/home/home.dart';

import 'home.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00843B),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                ),
                child: GestureDetector(
                  onTap: (){  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  home()),
                  );},
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Center(
                child: Text(
                  "Hail A Taxi",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  "Your everyday everything app",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(height: 60,),
           Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  height: 60.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: ListTile(
                    leading: Image(
                      image: AssetImage("images/fb.png"),
                      height: 30.0,
                      width: 30.0,
                    ),
                    title: Text(
                      "Continue With Facebook",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),

           ],),
              SizedBox(height: 16,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(

                  height: 60.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: ListTile(
                    leading: Image(
                      image: AssetImage("images/google.png"),
                      height: 30.0,
                      width: 30.0,
                    ),
                    title: Text(
                      "Continue With Google",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],),

              SizedBox(height: 30,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    width: 120.0,
                    height: 30.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                  SizedBox(width: 10,),

                     Text(
                      "or",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  SizedBox(width: 10,),
                  Container(

                    width: 120.0,
                    height: 30.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              GestureDetector( onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signuppage()),
                );
              },
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      height: 60.0,
                      width: 320.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage("images/phone.png"),
                          height: 30.0,
                          width: 30.0,
                        ),
                        title: Text(
                          "Continue With Mobile Number",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
