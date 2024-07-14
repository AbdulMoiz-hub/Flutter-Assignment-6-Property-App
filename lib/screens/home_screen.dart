import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Location'),
            const Text(
              'Los Angeles, CA',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Discover Best Suitable Property',
              textAlign: TextAlign.left,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('House'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Apartment'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Flot'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Flot'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
