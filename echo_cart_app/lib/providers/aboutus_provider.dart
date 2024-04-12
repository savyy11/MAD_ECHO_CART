import 'dart:ui';

import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = '/AboutUsScreen';
  const AboutUsScreen({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About & Contact Echo Cart'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Welcome to Echo Cart',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Text(
              'Echo Cart: Your passport to the vibrant essence of Sri Lanka. Explore and acquire a curated selection of authentic traditional items, from colorful textiles to intricately crafted handicrafts. Experience the richness of Sri Lankan culture, conveniently delivered to your doorstep through our app',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Our Vision',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Echo Cart aims to be the global hub for authentic Sri Lankan traditional items, fostering cultural appreciation, empowering artisans, and connecting communities worldwide through the beauty of craftsmanship.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: echocart.app@gmail.com\nPhone: +94 77 93 14 727\nAddress: Colombo, Sri Lanka',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutUsScreen(),
  ));
}
