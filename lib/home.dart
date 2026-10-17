import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("NIKE",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20),),
      ),
      leading: IconButton(onPressed: (){}, 
      icon: Icon(Icons.person,
      color: Colors.white,
      ),
      ),
      actions: [
        IconButton(onPressed: (){},
         icon: Icon(Icons.more_vert,
         color: Colors.white,
         ),
         ),
      ],
      ),
    );
  }
}