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
        borderRadius: BorderRadius.circular(size / 6), // Adjust the radius value as needed
        border: Border.all(
          color: Colors.black, // Border color
          width: 2.0, // Border width
        ),
      ),
      child: ClipRRect(
        // Clip the image to the rounded borders
        borderRadius: BorderRadius.circular(size / 10), // Adjust the radius value as needed
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover, // Cover the entire square area
        ),
      ),
    );
  }
}
