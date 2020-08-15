import'package:flutter/material.dart';
import 'package:flutter12/bottomnavigation.dart';
void main(){
  runApp(MyApp(),);
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(247, 247, 247, 1),
        accentColor: Color.fromRGBO(255, 111, 0, 1),
      ),
      home:BottomNavigation() ,
    );
  }
}
