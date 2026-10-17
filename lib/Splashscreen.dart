import 'package:dribble_ui/login.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    // Timer(
    //   Duration(seconds: 3),(){
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //         builder:((context) => Loginpage()) 
    //         )
    //       )
    //   }
    // );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage("assets/images/nike pint.png",),
          fit: BoxFit.cover,
          ),        
      ),
      child: SafeArea(
        child: Padding(
          padding:EdgeInsets.all(20),
          child: Column(
            children: [
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.black,
                 foregroundColor: Colors.white,
                 elevation: 8,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                 ),
                  child: Text("Get Start",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
            
                 ),
              
            ],
          ), 
          ),

      ),
     ) ,
    );
  }
}