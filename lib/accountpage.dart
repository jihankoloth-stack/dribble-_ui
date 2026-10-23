import 'package:flutter/material.dart';

class Accountpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Accountpage> createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {          
    return Scaffold(
      backgroundColor: Color(0xffffe5eb),
      body: SafeArea(
        child:Center(
       child: Column(
          children: [
            Text("Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            SizedBox(height: 10,),
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: Icon(Icons.person,
              size: 70,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                )
              ]

              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Presonal info",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      ),
                      TextButton(onPressed: (){},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black),
                       child:Text("Edit",
                        
                       ),
                       ),
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Name",
                    style: TextStyle(
                      fontSize: 14
                    ),
                    ),
                    subtitle: Text("jhon wick",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Emali",
                    style: TextStyle(
                      fontSize: 14
                    ),
                    ),
                    subtitle: Text("jhonwick@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      
                    ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone Number",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                    subtitle: Text("+91 7896530253",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Home Address",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    ),
                    subtitle: Text("Ambalavalavu(H),pallikalBazar (PO),Malappuram,kerala....",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
        )
        ),
    );
  }
}