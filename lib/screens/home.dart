import 'package:flutter/material.dart';
import 'package:kallsolutions/controllers/controller.dart';
import 'package:kallsolutions/elements/body.dart';
import 'package:kallsolutions/elements/centerView.dart';
import 'package:kallsolutions/elements/navigationBar.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  //bool _ismobile=false;

  final Controller controller = Get.put(Controller());
  
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //_ismobile=size.width<600;
    controller.setIsMobile(context);
    print("esmovillll  ${controller.ismobile}");
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: controller.ismobile ?AppBar(title: const Text('Kallsolutions')):null,
      body:  CenteredView(
        key: const ValueKey('home'),
        child: Column(children: <Widget>[
            //si no es movil poner una barra de navegacion
            if(!controller.ismobile) Navigationbar(),
            Expanded(child: Row(children: [Body()],))
          ],),
      ),
    );
  }
}