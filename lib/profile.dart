import 'package:flutter/material.dart';

import 'bottomnavbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView( // Wrap the Container with SingleChildScrollView
        child: Container(
          color: Colors.white, // Change the background color to white
          padding: const EdgeInsets.all(16.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    // Random profile icon
                    backgroundColor: Colors.blue, // Change this color as needed
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Customer Name', // Replace with the customer's name
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('Account Settings',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      title: Text('Edit Profile'),
                      leading: Icon(Icons.person),
                    ),
                    ListTile(
                      title: Text('Saved Addresses'),
                      leading: Icon(Icons.home),
                    ),
                    ListTile(
                      title: Text('Notification Settings'),
                      leading: Icon(Icons.notifications),
                    ),
                    ListTile(
                      title: Text('Change Phone Number'),
                      leading: Icon(Icons.phone),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('My Activity',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      title: Text('Reviews'),
                      leading: Icon(Icons.reviews),
                    ),
                    ListTile(
                      title: Text('Wishlisted Products'),
                      leading: Icon(Icons.favorite),
                    ),
                    ListTile(
                      title: Text('Cart'),
                      leading: Icon(Icons.shopping_cart),
                    ),
                    ListTile(
                      title: Text('Contact for mass orders'),
                      leading: Icon(Icons.people),
                    ),
                    ListTile(
                      title: Text('Message nearby sellers'),
                      leading: Icon(Icons.message),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      ListTile(
                        title: Text('Others',
                          style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold)),
              ),
      ListTile(
        title: Text('Bank &UPI Details'),
        leading: Icon(Icons.currency_rupee),
                    ),
                    ListTile(
                      title: Text('Payment and Refund'),
                      leading: Icon(Icons.payments_sharp),
                    ),
                  ],
                ),
              ),
              const Card(
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Text('Others',
                        style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      title: Text('Become A seller'),
                      leading: Icon(Icons.sell),

                    ),
                    ListTile(
                      title: Text('Community'),
                      leading: Icon(Icons.people_outline),
                      ),
                      ListTile(
                        title: Text('Learning Centre'),
                        leading: Icon(Icons.school),
                      ),
                      ListTile(
                        title: Text('Need help?'),
                        leading: Icon(Icons.call),
                      ),
                      ListTile(
                        title: Text('Log Out'),
                        leading: Icon(Icons.logout),
                      ),
                  ],
              ),),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
