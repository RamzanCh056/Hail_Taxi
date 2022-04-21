import 'package:flutter/material.dart';
import 'fourthpage.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 25.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60.0,
                child: ListTile(
                  leading: Icon(
                    Icons.stop_circle,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Lorong Terasek 1",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.stop_circle,
                    ),
                    iconSize: 20,
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => fourth()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 60.0,
                child: Card(
                  elevation: 1.0,
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
                      ),
                    ),
                    trailing: Image(
                      image: AssetImage("images/plus.png"),
                      height: 20.0,
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
                    margin: EdgeInsets.only(left: 10.0),
                    height: 60.0,
                    width: 170.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 2.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.home_outlined,
                          size: 25.0,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Add Home",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 170.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 2.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.work,
                          size: 25.0,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Add Work",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 70.0,
                child: Card(
                  elevation: 2.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.bookmark_border,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Saved Places",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Get to your favourite places exactly",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 70.0,
                child: ListTile(
                  title: Text(
                    "32 Jelan Terasek 1",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "0.003km, 32 jelan terasek L block, kurlus...",
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  trailing: Icon(
                    Icons.bookmark_border,
                    size: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 70.0,
                child: ListTile(
                  title: Text(
                    "44 Jelan Terasek 1",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "0.004km, 44 jelan terasek L block, kurlus...",
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  trailing: Icon(
                    Icons.bookmark_border,
                    size: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 70.0,
                child: ListTile(
                  title: Text(
                    "23 Jelan Terasek 1",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "0.006km, 23 jelan terasek L block, kurlus...",
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  trailing: Icon(
                    Icons.bookmark_border,
                    size: 25.0,
                    color: Colors.black,
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
