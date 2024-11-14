import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Controller extends GetxController{
  bool ismobile= false;
  
  void setIsMobile(context){
    final size = MediaQuery.of(context).size;
    if(size.width<600){
      ismobile= true;
      print("es movil");
    }else{
      ismobile= false;
    }
    update();
  }
}