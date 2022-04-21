import 'package:flutter/material.dart';
import 'package:grab_carride/screens/home/home.dart';
import 'package:grab_carride/screens/main/main_screen.dart';

class eight extends StatefulWidget {
  const eight({Key? key}) : super(key: key);

  @override
  State<eight> createState() => _eightState();
}

class _eightState extends State<eight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/pic.jpg'),
                  radius: 50.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  "How was your ride?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 30.0,
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.0,
                    width: 80.0,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 80.0,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 80.0,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.0,
                    width: 80.0,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 80.0,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 80.0,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              ListTile(
                leading: Text(
                  "Total Paid",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                trailing: Text(
                  "RM21.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "View details",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15.0,
                  ),
                ),
              ),
                               SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 30.0,
                    ),
                    height: 50.0,
                    width: 300.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  MainScreen(), ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: Text("Complete ride"),
                    ),
                  ),
              ],
              
              )
            ],
          ),
        ),
      ),
    );
  }
}
