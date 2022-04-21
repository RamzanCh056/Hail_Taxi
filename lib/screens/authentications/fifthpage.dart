import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'sixthpage.dart';
import 'seventhpage.dart';

class fifth extends StatefulWidget {
  const fifth({Key? key}) : super(key: key);

  @override
  State<fifth> createState() => _fifthState();
}

class _fifthState extends State<fifth> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 11.5,
  );

  late GoogleMapController _googleMapController;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    GoogleMap(
                      myLocationButtonEnabled: false,
                      zoomControlsEnabled: false,
                      initialCameraPosition: _initialCameraPosition,
                      onMapCreated: (controller) =>
                          _googleMapController = controller,
                    ),
                  ],
                ),
              ),
              Container(
                child: ListTile(
                  leading: Text(
                    "Suggested Rides",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sixth()),
                      );
                    },
                    child: Text(
                      "View all",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 60.0,
                width: 320.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(color: Colors.green),
                ),
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
                width: 320.0,
                color: Colors.grey.shade50,
                child: ListTile(
                  leading: Icon(
                    Icons.car_rental,
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
              Row(
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
                          MaterialPageRoute(builder: (context) => seventh()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: Text("Book JustGrab"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        onPressed: () => _googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition)),
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }
}
