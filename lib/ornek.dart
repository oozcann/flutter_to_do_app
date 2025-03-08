import 'package:flutter/material.dart';

List<String> toDo = ["Flutter","Youtube","Java"];

class Ornek extends StatelessWidget {
  const Ornek({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView.builder(
            itemCount: toDo.length,
            itemBuilder: (context, index) {
              return Card(
                child: Text(toDo[index])
              );
          },),
        ),
      ),
    );
  }
}