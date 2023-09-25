import 'package:flutter/material.dart';
import 'bottomnavbar.dart';

class NearbySellersScreen extends StatelessWidget {
  NearbySellersScreen({super.key});


  final List<Map<String, dynamic>> nearbySellers = [
    {

      'name': 'Seller 1',
      'location': 'Bennett University',
      'description': 'Quality products at affordable prices',
      'distance': '0.5 miles from your place',
      'itemsSold': 'Electronics, Clothing',
    },
    {
      'name': 'Seller 2',
      'location': 'Pari Chowk',
      'description': 'Fresh produce and groceries',
      'distance': '1.2 miles from your place',
      'itemsSold': 'Groceries, Fruits, Vegetables',
    },
    {
      'name': 'Seller 3',
      'location': 'Alpha 2',
      'description': 'Handmade crafts and gift',
      'distance': '2.3 miles from your place',
      'itemsSold': 'Art, Handicrafts, Jewelry',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby Sellers'),
      ),
      body: Container(
        color: Color(0xFFEDF6FF),
        child: ListView.builder(
          itemCount: nearbySellers.length,
          itemBuilder: (context, index) {
            final seller = nearbySellers[index];
            return Card(
              elevation: 4,
              margin: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListTile(
                title: Text(
                  seller['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Location: ${seller['location']}'),
                    Text('Description: ${seller['description']}'),
                    Text('Distance: ${seller['distance']}'),
                    Text(
                      'Sells: ${seller['itemsSold']}',
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                onTap: () {

                },
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
