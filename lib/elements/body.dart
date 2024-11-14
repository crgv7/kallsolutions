import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          Text(
            'Kallsolutions',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 10, height: 0.9, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          /*
          Text(
            'General Solutions Company',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 40, height: 0.9, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          */
          /*
              IconText(
                icon: const Icon(
                  Icons.phone,
                  size: 28,
                ),
                text: '7862816850',
              ),
              const SizedBox(
                height: 30,
          ),

          IconText(
            icon: const Icon(Icons.email, size: 28), text: 'k_allsolutions@yahoo.com'),
          const SizedBox(
            height: 30,
          ),  
          IconText(icon: Icon(Icons.location_on, size: 28), text: 'Florida, USA'),	
          */
          ])
     
        
   

    );
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