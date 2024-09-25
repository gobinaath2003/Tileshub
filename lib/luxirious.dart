import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LuxuriousTilesScreen(),
    );
  }
}

class LuxuriousTilesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Luxurious'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Luxurious',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Container(
              height: 3,
              width: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.orange],
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Luxurious tiles are crafted with premium materials, featuring intricate designs, '
              'rich textures, and exquisite finishes that exude elegance and sophistication. '
              'They often incorporate high-end elements like marble, porcelain, or natural stone, '
              'offering a sleek and polished look. These tiles are designed to enhance the ambiance '
              'of a space, combining beauty with durability.',
              style: TextStyle(color: Colors.white, fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 24),

          ],
        ),
      ),
    );
  }
}
