

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Good morning!",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        actions: [
          IconButton(
              tooltip: "Search",
              hoverColor: Colors.deepPurple,
              onPressed: null,
              icon: const Icon(
                Icons.notifications,
                color: Colors.purple,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //search bar

          Stack(
            children: [
              Card(
                child: Container(
                  color: Colors.black,
                ),
              ),
              Card(
                child: Container(
                  height: 600,
                  width: 700,
                  color: Colors.blue,
                ),
              ),
              Card(
                child: Container(
                  color: Colors.red,
                  height: 500,
                  width: 500,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
