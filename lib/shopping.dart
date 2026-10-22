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
                      ) 
                      ),
                      SizedBox(width: 10,),
                      Text("\$40",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                     ]
                    )
                  )
                ],

              ) 
            )
              
          ],
        )
        ),
    );
  }
}