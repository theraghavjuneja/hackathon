import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: (int index) {

        final List<String> routes = [
          'lib/consumerpage.dart',
          'lib/categories.dart',
          'lib/my_orders.dart',
          'lib/nearby_sellers.dart',
          'lib/profile.dart',
        ];

        setState(() {
          currentIndex = index;
        });

        if (index == 0) {
          Navigator.of(context).pushReplacementNamed(routes[0]);
        } else {
          Navigator.pushNamed(context, routes[index]);
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'My Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_city),
          label: 'Nearby Sellers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
