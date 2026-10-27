import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
final formkey=GlobalKey<FormState>();

final usernameController = TextEditingController();
final passwordController = TextEditingController();
@override
void dispose(){
  usernameController.dispose();
  passwordController.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Form(
          key: formkey,

          child: Column(
            children: [
              TextFormField(
                controller: usernameController,

                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),

                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return "Please enter username";
                //   }
                //   return null;
                // },
             validator: (value){
              if (value == null || value.isEmpty){
                return "enter usernsme";
              }
              return null;
             },
                
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: passwordController,
                obscureText: true,

                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password";
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    if (usernameController.text == "jihan" &&
                        passwordController.text == "123") {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomePage(),
                        ),
                      );

                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Invalid username or password"),
                        ),
                      );
                     }
                  }
                },

                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome",
        style: TextStyle(
          color: Colors.amber
        ) ,
        ),
        backgroundColor: Colors.green, 

      ),

      body: Center(
        child: Text(
          "Welcome Jihan!",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

