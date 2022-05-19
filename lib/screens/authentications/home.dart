import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE61978), // used
      // backgroundColor: Color(0xFF00843B),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Image(
                image: AssetImage("images/hail.png"),
                height: 300.0,
                fit: BoxFit.fill,
              ),
              // Container(
              //   height: 120.0,
              //   color: Colors.green,
              //
              // ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50.0,
                      width: 300.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => loginpage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text(
                          "Log In",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 60, right: 60),
              //   child: SizedBox(height: 50,
              //   child: Card(
              //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
              //     elevation: 5,
              //      color: Colors.white,
              //      child: Row(
              //        mainAxisAlignment: MainAxisAlignment.center,
              //        children: [
              //        Text( "Hello login", style: TextStyle(color: Colors.black, fontSize: 22),
              //        )
              //      ],),
              //   ),
              //   ),
              // ),
              //   SizedBox(
              //   height: 30,
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50.0,
                    width: 300.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signuppage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text("New to Hail? Sign up!"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
