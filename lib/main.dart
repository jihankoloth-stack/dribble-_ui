import 'package:dribble_ui/Splashscreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(JKapp());

}
class JKapp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "jihan",
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}