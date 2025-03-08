import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/asset/constants/colors.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Container(
            width: deviceWidth,
            height: deviceHeight / 3,
            decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                image: AssetImage("lib/asset/images/header.png"),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("08.03.2025",style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold))
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text("My To Do List",style: TextStyle(color:  Colors.white,fontSize: 35, fontWeight: FontWeight.bold),))
              ],
            ),
          ),
        ),
      ),
    );
  }

  
  
}
