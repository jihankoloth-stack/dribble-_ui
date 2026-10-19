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
      backgroundColor: Color(0xffffe5eb),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("NIKE",
      //   style: TextStyle(
      //     color: Colors.white,
      //     fontWeight: FontWeight.bold,
      //   ),
      //   ),
      // backgroundColor: Colors.black,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(20),),
      // ),
      // leading: IconButton(onPressed: (){}, 
      // icon: Icon(Icons.person,
      // color: Colors.white,
      // ),
      // ),
      // actions: [
      //   IconButton(onPressed: (){},
      //    icon: Icon(Icons.more_vert,
      //    color: Colors.white,
      //    ),
      //    ),
      // ],
      // ),
      body:SafeArea(
        child:Column(
          children: [
            // top appbar
            Padding(
              padding:EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(onPressed: (){},
                   icon: Icon(Icons.person,
                   size: 25,
                   ),
                   ),
                ),
                Text("Nike Air Max",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,

                ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(onPressed: (){}, 
                  icon: Icon(Icons.notifications_none,
                  size: 25,
                  ),
                  )
                ),

                ],
              ),
              
               ),

              //  banner
              Container(
                height: 140,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal:15 ),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
   // search
                 gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 88, 3, 3),
                    Color.fromARGB(255, 57, 4, 4),
                  ],
                ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("AIR",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text('Nike/n20% off',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          ),
                          SizedBox(height: 5,),
                          ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 4,
                            ),
                          ),
                           child: Text("Shop Now",
                           style: TextStyle(
                            fontSize: 11
                           ),
                           ),
                           ),
                        ],
                      ),
                      ),
                      Image.asset("assets/images/jordan_black-removebg-preview.png",
                      height:150,
                      width: 190,
                      fit: BoxFit.cover,
                      ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.all(15),

              child:Row (
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Stores",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
                TextButton(onPressed: (){},
                 child: Text("See All"),
                 ),

                ],
              ), 
              ),
              SizedBox(
                height:65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,

                        ),
                        SizedBox(height: 4,),
                        Text("NIKE",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height: 4,),
                        Text("ADIDAS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,

                        ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height: 4,),
                        Text("FILA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height: 4,),
                        Text("PUMA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              
              
          ],
        ),
         ),
    );
  }
}