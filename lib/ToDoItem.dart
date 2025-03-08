import 'package:flutter/material.dart';


class ToDoItem extends StatefulWidget {
  const ToDoItem({super.key, required this.title});
  final String title;

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.notes_outlined, size: 50),
            Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),
            Checkbox(value: isChecked, onChanged: (val) => {
              setState(() {
                isChecked = val!;
              })
            })
          ],
        ),
      ),
    );
  }
}