import 'package:flutter/material.dart';
import 'bottomnavbar.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      backgroundColor: const Color(0xFFEDF6FF), // Set background color
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add spacing from the top bar
        child: CategoryGridView(),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

class CategoryGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView( // Use ListView for dividers
      children: <Widget>[
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: 10, // Number of categories
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 60, // Adjust circle size as needed
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFCFDFEF), // Set circle color
                  ),
                  child: Center(
                    child: Text(
                      (index + 1).toString(),
                      style: const TextStyle(
                        color: Colors.white, // Change text color as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8), // Adjust spacing as needed
                Text(
                  'Text${index + 1}', // Display your category text here
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        ),
        Divider(
          color: Colors.grey[300], // Light shade color for divider
          thickness: 1, // Divider thickness
          height: 16, // Spacing after each row
        ),
      ],
    );
  }
}
