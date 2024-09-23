import 'package:flutter/material.dart';

void main() {
  runApp(Product());
}

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              buildSection('Tiles', [
                'https://media.istockphoto.com/id/176816406/photo/tile-flooring-samples-on-display.jpg?s=612x612&w=0&k=20&c=j3Q38Hj8eirmMn9cbncwDLGYd9e3BRQxEqTIOOE92vg=',
                'https://media.istockphoto.com/id/1334926091/photo/roof-of-new-house-with-shingles-roof-tiles-and-ventilation-window.jpg?s=612x612&w=0&k=20&c=Y7W08GJTQPQk0CzMPnpF_tSbCom5bnltG04Agjk1ZVo=',
                'https://sheffieldmetals.com/wp-content/uploads/2019/09/SpanishTile_1-1024x563.jpg',
                'https://media.istockphoto.com/id/176816406/photo/tile-flooring-samples-on-display.jpg?s=612x612&w=0&k=20&c=j3Q38Hj8eirmMn9cbncwDLGYd9e3BRQxEqTIOOE92vg=',
                'https://media.istockphoto.com/id/1334926091/photo/roof-of-new-house-with-shingles-roof-tiles-and-ventilation-window.jpg?s=612x612&w=0&k=20&c=Y7W08GJTQPQk0CzMPnpF_tSbCom5bnltG04Agjk1ZVo=',
              ]),
              buildSection('Parking tiles', [
                'https://media.istockphoto.com/id/176816406/photo/tile-flooring-samples-on-display.jpg?s=612x612&w=0&k=20&c=j3Q38Hj8eirmMn9cbncwDLGYd9e3BRQxEqTIOOE92vg=',
                'https://media.istockphoto.com/id/1334926091/photo/roof-of-new-house-with-shingles-roof-tiles-and-ventilation-window.jpg?s=612x612&w=0&k=20&c=Y7W08GJTQPQk0CzMPnpF_tSbCom5bnltG04Agjk1ZVo=',
                'https://sheffieldmetals.com/wp-content/uploads/2019/09/SpanishTile_1-1024x563.jpg',
                'https://media.istockphoto.com/id/176816406/photo/tile-flooring-samples-on-display.jpg?s=612x612&w=0&k=20&c=j3Q38Hj8eirmMn9cbncwDLGYd9e3BRQxEqTIOOE92vg=',
                'https://media.istockphoto.com/id/1334926091/photo/roof-of-new-house-with-shingles-roof-tiles-and-ventilation-window.jpg?s=612x612&w=0&k=20&c=Y7W08GJTQPQk0CzMPnpF_tSbCom5bnltG04Agjk1ZVo=',
              ]),
              buildSection('Roof', [
                'https://media.istockphoto.com/id/176816406/photo/tile-flooring-samples-on-display.jpg?s=612x612&w=0&k=20&c=j3Q38Hj8eirmMn9cbncwDLGYd9e3BRQxEqTIOOE92vg=',
                'https://media.istockphoto.com/id/1334926091/photo/roof-of-new-house-with-shingles-roof-tiles-and-ventilation-window.jpg?s=612x612&w=0&k=20&c=Y7W08GJTQPQk0CzMPnpF_tSbCom5bnltG04Agjk1ZVo=',
                'https://sheffieldmetals.com/wp-content/uploads/2019/09/SpanishTile_1-1024x563.jpg',
                'https://media.istockphoto.com/id/176816406/photo/tile-flooring-samples-on-display.jpg?s=612x612&w=0&k=20&c=j3Q38Hj8eirmMn9cbncwDLGYd9e3BRQxEqTIOOE92vg=',
                'https://media.istockphoto.com/id/1334926091/photo/roof-of-new-house-with-shingles-roof-tiles-and-ventilation-window.jpg?s=612x612&w=0&k=20&c=Y7W08GJTQPQk0CzMPnpF_tSbCom5bnltG04Agjk1ZVo=',
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection(String title, List<String> imagePaths) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: buildTile(imagePaths[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTile(String imagePath) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
