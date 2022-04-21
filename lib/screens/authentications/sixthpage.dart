import 'package:flutter/material.dart';

class sixth extends StatefulWidget {
  const sixth({Key? key}) : super(key: key);

  @override
  State<sixth> createState() => _sixthState();
}

class _sixthState extends State<sixth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40.0,
                color: Colors.grey.shade300,
                child: ListTile(
                  leading: Text(
                    "Economy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Icon(
                    Icons.circle_notifications,
                    size: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 60.0,
                color: Colors.green.shade50,
                child: ListTile(
                  leading: Icon(
                    Icons.car_rental,
                    size: 25.0,
                    color: Colors.green,
                  ),
                  title: Text(
                    "JustGrab",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 2 seats(find the nearest car...)",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Text(
                    "RM15.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                color: Colors.grey.shade50,
                child: ListTile(
                  leading: Icon(
                    Icons.electric_car,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "GrabCar Plus",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 2 seats(better car, better service)",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Text(
                    "RM17.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                color: Colors.grey.shade50,
                child: ListTile(
                  leading: Icon(
                    Icons.directions_car,
                    size: 25.0,
                    color: Colors.black,
                  ),
                  title: Text(
                    "GrabCar(6 seater)",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 2 seats with luggage",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Text(
                    "RM24.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40.0,
                color: Colors.grey.shade300,
                child: ListTile(
                  leading: Text(
                    "Premium",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Icon(
                    Icons.circle_notifications,
                    size: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 60.0,
                color: Colors.grey.shade50,
                child: ListTile(
                  leading: Icon(
                    Icons.electric_car,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "GrabCar Premium",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 2 seats(better car, better service)",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Text(
                    "RM32.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                color: Colors.grey.shade50,
                child: ListTile(
                  leading: Icon(
                    Icons.directions_car,
                    size: 25.0,
                    color: Colors.black,
                  ),
                  title: Text(
                    "GrabCar Exec",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 2 seats with luggage",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Text(
                    "RM36.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40.0,
                color: Colors.grey.shade300,
                child: ListTile(
                  leading: Text(
                    "Speciality",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Icon(
                    Icons.circle_notifications,
                    size: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 60.0,
                color: Colors.grey.shade50,
                child: ListTile(
                  leading: Icon(
                    Icons.electric_car,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "GrabCar(Executive)",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 2 seats metered executive taxi",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Text(
                    "RM27.00-41.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                color: Colors.grey.shade50,
                child: ListTile(
                  leading: Icon(
                    Icons.directions_car,
                    size: 25.0,
                    color: Colors.black,
                  ),
                  title: Text(
                    "GrabTexi Metered",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 2 seats with mtered budget tasks",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Text(
                    "RM18.00-26.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
