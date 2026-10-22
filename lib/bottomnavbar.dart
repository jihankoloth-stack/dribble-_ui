import 'package:dribble_ui/accountpage.dart';
import 'package:dribble_ui/home.dart';
import 'package:dribble_ui/shopping.dart';
import 'package:dribble_ui/wishlist.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int currenIndex=0;
  final List <Widget> pages=[
  Homepage(),
  Wishlist(),
  Shopping(),
  Accountpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currenIndex,children:pages,),

       bottomNavigationBar: BottomNavigationBar(
          currentIndex: currenIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,

          onTap: (index){
            setState(() {
              currenIndex=index;
            });
          },
          items:[ BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Wishlist"
              
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.shopping_bag_outlined),
                label: "Shopping",
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                ),
          ],
       ),
    );
  }
}