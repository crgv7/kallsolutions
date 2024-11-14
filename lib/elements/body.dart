import 'package:flutter/material.dart';
import 'package:kallsolutions/controllers/controller.dart';
import 'package:get/get.dart';
import 'package:kallsolutions/devices/movile_screen.dart';
import 'package:kallsolutions/devices/pc_screen.dart';
class Body extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  Body({super.key});
  
  
  @override
  Widget build(BuildContext context) {

    print("esmovilbody  ${controller.ismobile}");
    return controller.ismobile ? const MobileView() : const PcScreen();
  }


}

 class IconText extends StatelessWidget {
  const IconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40, // Ajusta el ancho del círculo
          height: 40, // Ajusta el alto del círculo
          decoration: BoxDecoration(
            color: Color(0xffc9ad7b),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: icon,
          ),
        ),
        const SizedBox(width: 8), // Espacio entre el círculo y el texto
        Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}


