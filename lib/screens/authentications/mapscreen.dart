import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'secondpage.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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
                height: 420.0,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => secondmap()),
                  );
                },
                child: Container(
                  height: 50.0,
                  width: 320.0,
                  color: Colors.grey.shade300,
                  child: ListTile(
                    leading: Icon(
                      Icons.location_on,
                      size: 25.0,
                      color: Colors.red,
                    ),
                    title: Text(
                      "Where to?",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
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
                    Icons.location_on,
                    size: 25.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    "1 Utama Old Wing",
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
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 60.0,
                width: 320.0,
                color: Colors.grey.shade200,
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    size: 25.0,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Komplex Kotarya",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Complex Kotarya, Bandar utama...",
                    style: TextStyle(
                      fontSize: 15.0,
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
                color: Colors.grey.shade200,
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    size: 25.0,
                    color: Colors.red,
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
                ),
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
