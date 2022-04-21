import 'package:flutter/material.dart';
import 'package:grab_carride/screens/authentications/home.dart';
import 'package:grab_carride/screens/main/main_screen.dart';


void main(){
    runApp(GrabCloneUI());
}


class GrabCloneUI extends StatelessWidget {
  const GrabCloneUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Your title app",
      home:  home(),
      //MainScreen(),
    );
  }
}
