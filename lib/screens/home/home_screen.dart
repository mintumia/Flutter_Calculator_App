import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Tittle ok")),
      body: Column(
        children: [
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          Container(
            padding: EdgeInsets.all(20),

            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightGreenAccent,
            ),
            child: Text("This is Body"),
          ),
        ],
      ),
    );
  }
}
