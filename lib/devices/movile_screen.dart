import 'package:flutter/material.dart';
import 'package:kallsolutions/elements/body.dart';
class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
         Text('Kallsolutions', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30, height: 0.9, color: Colors.white),
         ),
          SizedBox(
            height: 30,
          ),
          
      Text('General Solutions Company', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15, height: 0.9, color: Colors.white),), 
          SizedBox(
            height: 30,
          ),
      
        
          ])
     
     
    );
  }
}