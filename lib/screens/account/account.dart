

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import 'package:settings_ui/settings_ui.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              children: [
                Icon(
                  LineAwesomeIcons.user_circle,
                  size: 100,
                  color: Colors.green,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ramzan ch ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 12,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
       body: SingleChildScrollView(
         child: Column(children: [
       
               
                
                 ListTile(
                     tileColor: Colors.white,
                    title: Text('Rewards member',),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          
                          "127 OVO Points",
                          style: TextStyle(fontSize: 12),
                        ),
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                 
                  ),
                  ListTile(
                      tileColor: Colors.white,
                    title: Text("'Rewards'"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                   
                  ),
                  ListTile(
                      tileColor: Colors.white,
                    title: Text('Business Profile'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                    
                  ),
                  ListTile(
                      tileColor: Colors.white,
                    title: Text('Scheduled'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                    
                  ),
                 ListTile(
                    tileColor: Colors.white,
                    title: Text('Cards'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                 
                  ),
                 ListTile(
                     tileColor: Colors.white,
                    title: Text('Subscriptions'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                   
                  ),
                  ListTile(
                      tileColor: Colors.white,
                    title: Text('Challanges'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                   
                  ),
                 ListTile(
                     tileColor: Colors.white,
                    title: Text('Support the Environment'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red),
                          child: Text(
                            "New",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                    
                  ),
                  ListTile(
                      tileColor: Colors.white,
                    title: Text('Saved Places'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                    
                  ),
                ListTile(  tileColor: Colors.white,
                    title: Text('Help Centre'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                    // onPressed: (BuildContext context) {},
                  ),
                 ListTile(  tileColor: Colors.white,
                    title: Text("'Drive with Grab',"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LineAwesomeIcons.angle_right,
                          size: 16,
                        )
                      ],
                    ),
                   
                  ),
                
              
         ],),
       ),
        
         
           
          
        
      ),
    );
  }
}
