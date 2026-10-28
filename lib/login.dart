import 'package:dribble_ui/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final usernameController= TextEditingController();
  final passwordController=TextEditingController();

  Future<void> login()async{
    String username= usernameController.text;
    String password= passwordController.text;

    if (username == "jihan"&&password=="123"){
    final prefs= await SharedPreferences.getInstance();
    await prefs.setBool("isLoggedin", true);
    if (!mounted) return;
    Navigator.pushReplacement(context,
     MaterialPageRoute(
      builder:(context)=>Bottomnavbar(),),
      );
     
    }else{
      showDialog(context:context,
      builder: (context){
        return AlertDialog(
         title: Text( "Login Failed"),
         content: Text("invaild password or username"),
         actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          },
           child: Text("OK"),
           ),
         ],
         
        );
      }
      );
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage("assets/images/background black blue.jpg",
          
          ) ,
          fit: BoxFit.cover,
          ),
        ),
        child:SafeArea(child:  Align(
        child: Container(
          width: double.infinity,
          height: 400,
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
             color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white24,
              width: 2,
            )

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white
              ),
              ),
              SizedBox(height: 35,),
              TextField(
                controller:usernameController,
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                    
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  )
                  
                 ),
                
                ),
                SizedBox(height: 25,),

                TextField(
                  controller: passwordController,
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                  
                    color: Colors.white,
                    // fontWeight: FontWeight.bold
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    )
                  )
                ),
                ),
                SizedBox(height: 3,),
              
                Row(               
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Spacer(),
                   TextButton(onPressed: (){},
                    child: Text("Forgot?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                    ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    login();
                  },
                  style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.black,
                   foregroundColor: Colors.white,
                   elevation: 2,
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                   )
                  ),
                   child: Text("Login",
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                   ),
                   )
                   ),
                ),
                SizedBox(height: 15,),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text("Don't have an account?",
                    
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Text("Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,

                      ),
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