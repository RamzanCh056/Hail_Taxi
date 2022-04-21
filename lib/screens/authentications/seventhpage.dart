import 'package:flutter/material.dart';
import 'eightpage.dart';

class seventh extends StatefulWidget {
  const seventh({Key? key}) : super(key: key);

  @override
  State<seventh> createState() => _seventhState();
}

class _seventhState extends State<seventh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  top: 10.0,
                ),
                height: 250.0,
                child: Image(
                  image: AssetImage("images/car.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 15.0,
                ),
                child: Text(
                  "Add ride cover to rides?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 5.0,
                  color: Colors.black,
                ),
                title: Text(
                  "Get a RM5.0 grab voucher if pick-up is delayed 15 min or more",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle,
                  size: 5.0,
                  color: Colors.black,
                ),
                title: Text(
                  "Get increased personal accident coverage",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0,
                  left: 15.0,
                ),
                child: Text(
                  "More Information",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 80.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: Text(
                  "Get a RM5.0 grab voucher if pick-up is delayed 15 min or more,Get a RM5.0 grab voucher if pick-up is delayed 15 min or more,Get a RM5.0 grab voucher if pick-up is delayed 15 min or more",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                  ),
                ),
              ),
              ListTile(
                leading: Text(
                  "Total Fare",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                trailing: Text(
                  "RM21.35",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                ),
                child: Text(
                  "Fare include rides cover free",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                    ),
                    height: 50.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      child: Text(
                        "No",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 10.0,
                    ),
                    height: 50.0,
                    width: 150.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => eight()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: Text(
                        "Yes",
                        style: TextStyle(color: Colors.white),
                      ),
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
