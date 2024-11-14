import 'package:flutter/material.dart';
import 'package:kallsolutions/elements/body.dart';
import 'package:kallsolutions/elements/centerView.dart';
import 'package:kallsolutions/elements/navigationBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  CenteredView(
        key: const ValueKey('home'),
        child: Column(children: <Widget>[
            //Navigationbar(),
            Expanded(child: Row(children: [Body()],))
          ],),
      ),
    );
  }
}