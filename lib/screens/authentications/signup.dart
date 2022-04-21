import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:grab_carride/screens/authentications/home.dart';
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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

                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                        left: 70.0,
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 15.0),
                  child: Text(
                    "Mobile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    //controller: phoneController,
                    decoration: InputDecoration(
                      prefixIcon: SizedBox(
                        height: 20,
                        child: CountryCodePicker(
                          textOverflow: TextOverflow.visible,
                          padding: EdgeInsets.only(
                            top: 2,
                            bottom: 7,
                          ),
                          onChanged: (code) {
                            countryCode = code;
                          },
                          initialSelection: countryCode.dialCode,
                          showCountryOnly: true,
                          showOnlyCountryWhenClosed: false,
                          alignLeft: false,
                        ),
                      ),
                      hintText: 'Phone Number',
                      // border: InputBorder.none,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 40.0,
                    left: 15.0,
                    right: 10.0,
                  ),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white38,
                      filled: true,
                      hintText: 'No spam, we promise',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 40.0,
                    left: 15.0,
                    right: 10.0,
                  ),
                  child: Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white38,
                      filled: true,
                      hintText: 'What should people call you?',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 80.0,
                    left: 15.0,
                    right: 10.0,
                  ),
                  child: Text(
                    "By continuing, you confirm you've read and agree to our",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.0,
                      ),
                      child: Text(
                        "Terms of Services",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Text(
                      " and",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      " Privacy Policy",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      " on how we",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 10.0,
                  ),
                  child: Text(
                    "collect, use, disclose, and process your personal data.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
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
                                MainScreen(),      ),
                             // MapScreen()
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text("Next"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
