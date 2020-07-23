import 'package:flutter/material.dart';

class CharacterImage extends StatelessWidget {
  final String imagePath;

  CharacterImage(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imagePath),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle),
    );
  }
}
