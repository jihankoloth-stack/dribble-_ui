import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  const new({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15) ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My shopping",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black
                  ),
                   child: Text("Edit"),
                   ),
                ],
              ),
              ),
            Expanded(
              child:ListView(
                padding: EdgeInsets.symmetric(horizontal: 15),
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent.shade400,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child:Row(
                      children: [ Icon(Icons.local_shipping_outlined,
                    color: Colors.white,
                    size: 30,
                    ),
                    SizedBox(width: 13,),
                    Expanded(
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You've unlocked free shipping!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 10,),
                          LinearProgressIndicator(
                            value: 1,
                            color: Colors.white,
                            backgroundColor:Colors.white ,

                          ),

                        ],
                      ) ,
                      ),
                      SizedBox(width: 10,),
                      Text("\$40",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      
                     ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset("assets/images/nike_black-removebg-preview.png",
                          fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 12,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("NIKE AIR jordan 45",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:16
                              ),
                              ),
                              Text("blackyy",
                              style:TextStyle(
                                fontWeight: FontWeight.bold,
                              )
                              ),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                               children: [
                              Text("\$400.00",
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal:20,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child:Row(
                                  children: [
                                    Icon(Icons.remove,
                                    size: 17,
                                    ),
                                    Text("1"),
                                    Icon(Icons.add,
                                    size: 19,
                                    ),
                                  ],
                                ),
                              
                              ),
                                ],
                              )

                            ],
                          )
                          ),
                      ],
                    ),
                  )
                ],

              ) ,
            ),
              
          ],
        )
        ),
    );
  }
}