import 'package:flutter/material.dart';

// 앱을 구동시킨다.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 플러터에서 앱 디자인을 넣는 법: 위젯 짜집기 ( 글자, 아이콘, 이미지, 네모)
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          
          // children: const [
          //   Icon(Icons.star),
          //   Icon(Icons.star),
          //   Icon(Icons.star),
          // ],
          children: [
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              color: Colors.red,
              child: Center(
                child: Text(
                  "hello World",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                  ),
                ),
              )
            ),
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              color: Colors.blue,
              child: Center(
                child: Text(
                  "hello World",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                  ),
                ),
              )
            ),
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              color: Colors.green,
              child: Center(
                child: Text(
                  "hello World",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                  ),
                ),
              )
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.text_snippet), label: "판매"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "마이페이지")
          ],
        ),
      )
    );
  }
}
