import 'package:flutter/material.dart';
import 'package:projet_battle/screens/singn_in.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat"
      ),
      home: SingnScreen(),
    );
  }
}

