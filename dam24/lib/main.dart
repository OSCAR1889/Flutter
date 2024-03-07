import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
final TextStyle textStyle=TextStyle(
    color: Colors.grey,
    fontSize: 30.0
  );
  final double iconSize=40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: Text("I Love Flutter",
              style: textStyle
              ), icon: Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 40.0,
              )),
              MyCard(
              title: Text("I Love Flutter",
              style: textStyle
              ), icon: Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 40.0,
              ))
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  
  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                this.title,
                this.icon
              ],
            )
            ),
            );
  }
}