import 'package:flutter/material.dart';
import 'package:miso_starbucks/miso.dart';
import 'package:miso_starbucks/starbucks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppListPage(),
    );
  }
}

class AppListPage extends StatelessWidget {
  const AppListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Miso()));
              },
              child: CircleAvatar(
                  radius: 50, backgroundImage: AssetImage('image/miso.png')),
            ),
            SizedBox(width: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Starbucks()));
              },
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('image/starbucks.png')),
            )
          ],
        ),
      )),
    );
  }
}
