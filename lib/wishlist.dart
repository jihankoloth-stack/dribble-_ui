import 'package:dribble_ui/home.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){
                    
                  }, 
                  icon: Icon(Icons.arrow_back)),
                  Text("My Wishlist",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  IconButton(onPressed: (){},
                   icon: Icon(Icons.share),
                   ),
                ],

              ),
              ),
              Expanded(
                child:ListView(
                  padding: EdgeInsets.all(12),
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 145,
                          height: 145,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset("assets/images/nike blue.webp",
                                width: 145,
                                height: 135,
                                ),
                              ),
                              const Positioned(
                                top: 8,
                                left: 8,
                                 child:Icon(Icons.favorite,
                                 color: Colors.deepOrange,
                                 ) ,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 12,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("NIKE air Max",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                                ),
                                ),
                                SizedBox(width: 80,),
                                IconButton(onPressed:(){},
                                 icon:Icon(Icons.more_vert),
                                 ),
                              ],
                            ),
                            Text("Nike Air Max 95 Older Bubble "),
                            Text("Men's Shoes. Nike Air Max "),
                            Row(
                              children: [
                            ElevatedButton.icon(
                              onPressed: (){},
                            icon:Icon(Icons.link,
                            size: 15,
                            ),
                             label: Text("visit link",
                             style: TextStyle(
                             color: Colors.black,
                             ),
                             ),
                             style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                               shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(15),
                                ),
                             ),
                             ),
                            
                            ]
                            )
                            
                          ],
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Container(
                        width: 145,
                        height: 145,
                        decoration:BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                            ),
                          ]
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child:Image.asset("assets/images/nike_black-removebg-preview.png",
                              width: 145,
                              height: 135,
                              ) ,
                            ),
                            Positioned(
                              top: 8,
                              left: 8,
                              child:Icon(Icons.favorite,
                              color: Colors.deepOrange,
                              )
                               ),
                          ],
                        ),
                       ),
                       SizedBox(width: 15,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("NIKE air 45",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              ),
                              SizedBox(width: 90,),
                              IconButton(onPressed: (){},
                               icon: Icon(Icons.more_vert)
                               ),
                            ],
                          ),
                          Text("Air Jordan 1 High OG 'Royal'"),
                          Text("Air Jordan 45 Men's Shoes"),

                          ElevatedButton.icon(onPressed: (){},
                          icon: Icon(Icons.link,
                          size: 15,
                          ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(15)
                              ),
                            ),
                           label:Text("visit link") ,
                           )
                        ],
                       ),
                      ],
                    ),
                  ],
                ),
                ),
          ],
        )
        ),
    );
  }
}