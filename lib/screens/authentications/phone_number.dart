import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:grab_carride/screens/authentications/signup.dart';
import 'package:grab_carride/screens/authentications/varification_otp.dart';
class Phone_number extends StatefulWidget {
  const Phone_number({ Key? key }) : super(key: key);

  @override
  State<Phone_number> createState() => _Phone_numberState();
}

class _Phone_numberState extends State<Phone_number> {
    TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  CountryCode countryCode = CountryCode.fromDialCode('+92');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SafeArea(
            child: Column(children: [
               Row(
                      children: [
                        GestureDetector( onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  signuppage()),
                        );},
                          child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 20.0,
                            ),
                        ),
          
                      
                         
                        
                      ],
                    ),
          
                    SizedBox(height: 60,),
                     Row( mainAxisAlignment: MainAxisAlignment.center,
                       
                       children: [
                        Text(
                        "Authentication",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 22.0,
                        ),
                      ),
          
                     ],),
                     Row( mainAxisAlignment: MainAxisAlignment.center,
                       
                       children: [
                        Text(
                        "Enter your number below a code\nwill be send for varification",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                        ),
                      ),
          
                     ],),
          
                     SizedBox(height: 32,),
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
          
              
            ],),
            
            
          ),
        ),

        floatingActionButton: FloatingActionButton(
        onPressed: () {
Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Otp()),
                        );

        },
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 29,
        ),
        backgroundColor: Colors.green,
       
        elevation: 5,
        splashColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

    
    );
    
  }
  
}