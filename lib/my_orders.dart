import 'package:flutter/material.dart';

import 'bottomnavbar.dart';

class MyOrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: Container(
        color: Colors.blue, // Change the color as needed
        child: const Center(
          child: Text('My Orders Screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
