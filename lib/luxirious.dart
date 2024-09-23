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
            Text(
              'Our models',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  imageTile(
                      ' https://sc04.alicdn.com/kf/H5eaa43a0b1b74bf3a6fb6d6daea69b547.jpg'),
                  imageTile(
                      'https://sc04.alicdn.com/kf/H5eaa43a0b1b74bf3a6fb6d6daea69b547.jpg'),
                  imageTile(
                      'https://image.made-in-china.com/202f0j00OadGhVFEEJcp/Made-in-China-Home-Decoration-Marble-Building-Material.jpg'),
                  imageTile(
                      'https://sheffieldmetals.com/wp-content/uploads/2019/09/SpanishTile_1-1024x563.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageTile(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
