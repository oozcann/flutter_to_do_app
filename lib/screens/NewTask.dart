import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/asset/constants/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class NewTask extends StatelessWidget {
  const NewTask({super.key});

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight / 10,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                    image: AssetImage("lib/asset/images/header.png"),
                    fit: BoxFit.cover
                  )
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      }, 
                      icon: Icon(Icons.close,size: 40,color: Colors.white)
                    ),
                    Expanded(
                      child: Text(
                          "Add New Task",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 21
                          ),
                          textAlign: TextAlign.end
                        )
                      )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10), child: Text("Task Title")),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(decoration: InputDecoration(filled: true, fillColor: Colors.white))
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Category"),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Category selected."),duration: Duration(milliseconds: 700),)
                          );
                        }, 
                        icon: Icon(Icons.calendar_month,size: 40,color: Colors.purple)
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Category selected."),duration: Duration(milliseconds: 700),)
                          );
                        }, 
                        icon: Icon(Icons.note,size: 40,color: Colors.purple)
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Category selected."),duration: Duration(milliseconds: 700),)
                          );
                        }, 
                        icon: Icon(Icons.plumbing_sharp,size: 40,color: Colors.purple)
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Date"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(decoration: InputDecoration(filled: true, fillColor: Colors.white)),
                          )
                        ],
                      )
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("Time"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(decoration: InputDecoration(filled: true, fillColor: Colors.white)),
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20), child:  Text("Notes")),
              SizedBox(
                height: 300,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(filled: true, fillColor: Colors.white)
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20), child: ElevatedButton(onPressed: () {}, child: Text("Save")))
            ],
          ),
        ),
      )
    );
  }
}