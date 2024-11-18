import 'package:flutter/material.dart';
import 'package:kallsolutions/controllers/controller.dart';
import 'package:kallsolutions/elements/body.dart';
import 'package:kallsolutions/elements/centerView.dart';
import 'package:kallsolutions/elements/navigationBar.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
      floatingActionButton: SpeedDial(
        child: const Icon(Icons.more_vert, color: Colors.white,),
        buttonSize: const Size(55, 55),
        curve: Curves.bounceIn,
        activeIcon: Icons.close,
        backgroundColor: Colors.yellow  ,
        activeBackgroundColor: Colors.black,
       //overlayColor: Colors.black,
        overlayOpacity: 0.1,
        


        children: [
          SpeedDialChild(
            child: const Icon(Icons.share),
            label: 'Share',
            onTap: () => print('Share'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.favorite),
            label: 'Favorite',
            onTap: () => print('Favorite'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.delete),
            label: 'Delete',  
            onTap: () => print('Delete'),
          ),
        ],

      ),
    );
  }
}