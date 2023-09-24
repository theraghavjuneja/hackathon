import 'package:flutter/material.dart';
import 'bottomnavbar.dart';

class NearbySellersScreen extends StatelessWidget {
  NearbySellersScreen({super.key});

  // Sample list of nearby sellers
  final List<Map<String, dynamic>> nearbySellers = [
    {
      // currently this page has been hardcoded ..as sirf 36 hr the
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
    // Add more sellers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby Sellers'),
      ),
      body: Container(
        color: Color(0xFFEDF6FF), // Set the background color
        child: ListView.builder(
          itemCount: nearbySellers.length,
          itemBuilder: (context, index) {
            final seller = nearbySellers[index];
            return Card(
              elevation: 4, // Add elevation to the cards
              margin: const EdgeInsets.all(8.0),
              color: Colors.white, // Set card color to white
              child: ListTile(
                title: Text(
                  seller['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, // Make text bold
                    fontSize: 18, // Increase font size
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
                        fontStyle: FontStyle.italic, // Make text italic
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle tapping on a seller item
                  // You can navigate to a seller's detail screen or perform any action here
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
