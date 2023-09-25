import 'package:flutter/material.dart';

class ImageSquareCircular extends StatelessWidget {
  final String imagePath;
  final double size;

  ImageSquareCircular({required this.imagePath, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 6),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: ClipRRect(

        borderRadius: BorderRadius.circular(size / 10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
