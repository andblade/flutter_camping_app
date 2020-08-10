import 'package:flutter/material.dart';
import 'pages/bem_vindo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(fontFamily: 'lato'),
      home: BemVindo(),
    );
  }
}
