import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              width: 110,
              height: 110,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              color: Colors.blue,
            ),
            Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              color: Colors.green,
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.text_snippet), label: "판매"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: "마이페이지")
          ],
        ),
      )
    );
  }
}
