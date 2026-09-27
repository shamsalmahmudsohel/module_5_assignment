import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(Icons.add, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.call, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      backgroundColor: const Color(0xFFF5F0F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Ice Cream Section
            CircleAvatar(
              radius: 90,
              backgroundColor: Colors.purple.shade100,
              child: const Icon(
                Icons.icecream,
                size: 80,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Ice cream is very delicious right?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 60),

            // Code Section
            CircleAvatar(
              radius: 90,
              backgroundColor: Colors.purple.shade100,
              child: const Icon(
                Icons.code,
                size: 80,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Programming is not boring if you love it',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}