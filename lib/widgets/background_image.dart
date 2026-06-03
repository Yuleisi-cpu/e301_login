import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

@override
Widget build(BuildContext context) {
  return Container(
    decoration: buildBoxDecoration(),
    child: Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset(
            'logo.png',
            width: 280,
          ),
        ),
      ),
    ),
  );
}
  
  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('fondoregistro.jpg'),
        fit: BoxFit.cover
      )
    );
  }
}