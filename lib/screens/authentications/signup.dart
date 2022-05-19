import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:grab_carride/screens/authentications/home.dart';
import 'package:grab_carride/screens/authentications/phone_number.dart';
import 'package:grab_carride/screens/main/main_screen.dart';
import 'mapscreen.dart';

import 'login.dart';

class signuppage extends StatefulWidget {
  const signuppage({Key? key}) : super(key: key);

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  CountryCode countryCode = CountryCode.fromDialCode('+92');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector( onTap: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );},
                        child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 20.0,
                          ),
                      ),

                    
                       
                      
                    ],
                  ),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                              "Welcome",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                           ],
                         ),
                  SizedBox(height: 68,),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 30.0, left: 15.0),
                  //   child: Text(
                  //     "Mobile",
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 17.0,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     top: 20.0,
                  //     left: 10.0,
                  //     right: 10.0,
                  //   ),
                  //   child: TextFormField(
                  //     controller: phoneController,
                  //     keyboardType: TextInputType.number,
                  //     //controller: phoneController,
                  //     decoration: InputDecoration(
                  //       prefixIcon: SizedBox(
                  //         height: 20,
                  //         child: CountryCodePicker(
                  //           textOverflow: TextOverflow.visible,
                  //           padding: EdgeInsets.only(
                  //             top: 2,
                  //             bottom: 7,
                  //           ),
                  //           onChanged: (code) {
                  //             countryCode = code;
                  //           },
                  //           initialSelection: countryCode.dialCode,
                  //           showCountryOnly: true,
                  //           showOnlyCountryWhenClosed: false,
                  //           alignLeft: false,
                  //         ),
                  //       ),
                  //       hintText: 'Phone Number',
                  //       // border: InputBorder.none,
                  //     ),
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child:  TextFormField(
                 // autocorrect: true,
                  decoration: InputDecoration(
                   hintText: 'name',
                    prefixIcon: Icon(Icons.email),
                    hintStyle: TextStyle(color: Colors.grey),
                     border: OutlineInputBorder(),
                     errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                    //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    
                     ),
                    focusedBorder: OutlineInputBorder(
                     // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      
                      
                    ),
                  ),
                          
                  
                  ),
      
      
                                   
      
                
                  ),
                     Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child:  TextFormField(
                 // autocorrect: true,
                  decoration: InputDecoration(
                   hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    hintStyle: TextStyle(color: Colors.grey),
                     border: OutlineInputBorder(),
                     errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                    //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    
                     ),
                    focusedBorder: OutlineInputBorder(
                     // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      
                      
                    ),
                  ),
                          
                  
                  ),
      
      
                                   
      
                
                  ),
                  
               Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child:  TextFormField(
                 // autocorrect: true,
                  decoration: InputDecoration(
                   hintText: 'phone number',
                    prefixIcon: Icon(Icons.lock),
                    hintStyle: TextStyle(color: Colors.grey),
                     border: OutlineInputBorder(),
                     errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                    //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    
                     ),
                    focusedBorder: OutlineInputBorder(
                     // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      
                      
                    ),
                  ),
                          
                  
                  ),
      
      
                                   
      
                
                  ),
                     Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child:  TextFormField(
                 // autocorrect: true,
                  decoration: InputDecoration(
                   hintText: 'password',
                    prefixIcon: Icon(Icons.remove_red_eye),
                    hintStyle: TextStyle(color: Colors.grey),
                     border: OutlineInputBorder(),
                     errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                    //  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    
                     ),
                    focusedBorder: OutlineInputBorder(
                     // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      
                      
                    ),
                  ),
                          
                  
                  ),
      
      
                                   
      
                
                  ),
          
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                       
                        height: 50.0,
                        width: 300.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                                Phone_number(),),
                                //  MainScreen(),      ),
                               
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text("Sing-up"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
