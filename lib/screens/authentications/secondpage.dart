import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'thirdpage.dart';

class secondmap extends StatefulWidget {
  const secondmap({Key? key}) : super(key: key);

  @override
  State<secondmap> createState() => _secondmapState();
}

class _secondmapState extends State<secondmap> {
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
                height: 450.0,
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
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60.0,
                width: 320.0,
                color: Colors.grey.shade200,
                child: ListTile(
                  leading: Icon(
                    Icons.stop_circle,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "1 Utama New Wing",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1 Utama New Wing, Bandar...",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  trailing: Icon(
                    Icons.bookmark_border,
                    size: 25.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => third()),
                  );
                },
                child: Container(
                  height: 60.0,
                  width: 320.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.carpenter,
                      size: 25.0,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Add pick-up notes for driver",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                   
                    height: 50.0,
                    width: 300.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: Text("Confirm Pick-Up"),
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
