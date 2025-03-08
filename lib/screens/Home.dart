import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/asset/constants/colors.dart';
import 'package:flutter_to_do_app/Header.dart';
import 'package:flutter_to_do_app/screens/NewTask.dart';
import 'package:flutter_to_do_app/toDoItem.dart';
import 'package:hexcolor/hexcolor.dart';

List<String> toDo = ["Study Lesson","Run 5K","Go to Party"];
List<String> completed = ["Game Meet Up","Take Out Trash"];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20,10,20,10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: toDo.length,
                    itemBuilder: (context, index) {
                      return ToDoItem(title: toDo[index]);
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Completed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20,10,20,10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: completed.length,
                    itemBuilder: (context, index) {
                      return ToDoItem(title: completed[index]);
                    },
                  )
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NewTask(),
                  )
                );
              }, 
              child: Text("Add New Task")
            )
          ],
        ),
      ),
    );
  }
}