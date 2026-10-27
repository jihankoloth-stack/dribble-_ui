import 'package:dribble_ui/Home2.dart';
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                        )
                      ]

                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                           
                            // color: Colors.amber,
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
                                  horizontal:13,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
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
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                       BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                       )
                      ]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Image.asset("assets/images/nike_green-removebg-preview.png"),

                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text("NIKE AIR Max 95 ",
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                             ),
                             ),
                             Text("Dark Smoke Grey",
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                             ),
                             ),
                             SizedBox(height: 20,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$500.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 13,
                                    vertical: 2
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.remove,
                                      size: 17,
                                      ),
                                      Text("1"),
                                      Icon(Icons.add,
                                      size: 19,
                                      )
                                    ],
                                  ),
                                )
                              ],
                             ),
                            ],
                          ) 
                          )

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                          Expanded(
                            child:TextField(
                              decoration: InputDecoration(
                                hintText: "Enter promp code",
                                border:InputBorder.none,
                              ),
                            ),
                             ),
                           ElevatedButton(onPressed: (){},
                           style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                           ),
                            child:Text("APPLY"),
                            ),  
                      ],
                    )
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Subtotal",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                                ),
                                Text("\$900.00",
                                style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                )
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Text("Discount",
                               style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                               ),
                               ),
                               Text("-\$100.00",
                               style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                               ),
                               ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Shipping",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                                ),
                                Text("Free",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Divider(height: 1,),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                Text("\$800.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Divider(height: 1,),
                            SizedBox(height: 10,),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (contaxt)=>Home2(),),
                                  );
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white,
                                shape: ContinuousRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))
                              ),
                               child: Text("Proceed to Checkout",
                               
                               )
                               ),
                            )
                          ],
                        ),
                      
                        
                      ),
                  
                ],

              ) ,
            ),
              
          ],
        )
        ),
    );
  }
}