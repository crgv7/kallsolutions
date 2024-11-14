import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kallsolutions/controllers/controller.dart';
import 'package:get/get.dart';
class CenteredView extends StatelessWidget {
  final Widget child;

  final Controller controller = Get.put(Controller()); 

  CenteredView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    print("esmovil  ${controller.ismobile}");
    return Container(
       decoration: controller.ismobile ? const BoxDecoration(color: Colors.black) : const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background.png'), fit: BoxFit.cover),
      ), 
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: child,
          ),
    );
  }
}