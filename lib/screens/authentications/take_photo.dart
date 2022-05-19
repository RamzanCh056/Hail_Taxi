import 'package:flutter/material.dart';
import 'package:grab_carride/screens/main/main_screen.dart';
class Takephoto extends StatefulWidget {
  const Takephoto({ Key? key }) : super(key: key);

  @override
  State<Takephoto> createState() => _TakephotoState();
}

class _TakephotoState extends State<Takephoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
                 SizedBox(
                height: 18,
              ),
              Container(
                width: 210,
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'images/pic.jpg', fit: BoxFit.fill,
                ),
              ),
               SizedBox(height: 20,),
               Column(children: [
                  Text(
                'Adding photos Ease\nPickups',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold, color: Colors.green
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Drivers often use picture to confirm\n that you are the correct ride",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
               // textAlign: TextAlign.center,
              ),
               ],),

               SizedBox(height: 30,),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(children: [
                     Icon(Icons.add_a_photo, color: Colors.green, size: 30,),
                     SizedBox(width: 7,),
                       Text(
                  "Take Photo",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
              
                  ),
                 // textAlign: TextAlign.center,
              ),

                 ],),
               ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                     Icon(Icons.image,color: Colors.green, size: 30,),
                               SizedBox(width: 7,),
                       Text(
                "Chose from Library",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
              
                ),
               // textAlign: TextAlign.center,
              ),

               ],),
                  )



          ],),

          
        ),
      ),
      
        floatingActionButton: FloatingActionButton(
        onPressed: () {
Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen ()),
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