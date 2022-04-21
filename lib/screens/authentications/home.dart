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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage("images/grabn.jpeg"),
                height: 400.0,
                fit: BoxFit.fill,
              ),
              // Container(
              //   height: 120.0,
              //   color: Colors.green,
              //
              // ),
              SizedBox(height: 50,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

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
                        primary: Color(0xFF00843B),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text("Log In"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
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
