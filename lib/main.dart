import 'package:flutter/material.dart';
import 'package:kallsolutions/screens/home.dart';
import 'package:get/get.dart';


void main() => runApp(GetMaterialApp(home: Home()));

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
