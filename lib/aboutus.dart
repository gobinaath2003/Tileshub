import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AboutUsScreen(),
  ));
}

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title with gradient line
              Text(
                'About us',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 8),
              Container(
                height: 4,
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.red],
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Paragraph 1
              Text(
                'Bharathiya Tiles was founded in 2003 with a mission to offer design excellence and exceptional service in the tile industry. Over the past 20 years, they have built a reputation as licensed decorators, known for delivering top-notch products at competitive prices.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 16),

              // Paragraph 2
              Text(
                'Their impressive 10,000 sq ft showroom showcases a vast selection of premium tile brands sourced from around the world. Whether you\'re seeking modern, traditional, or luxury designs, Bharathiya Tiles has options to suit every style and budget.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 16),

              // Paragraph 3
              Text(
                'Bharathiya Tiles caters to a wide range of industries, including contract, wellness, residential, medical, and leisure sectors. Whether it’s for a commercial building, a healthcare facility, or a luxury residence, their products meet the highest standards of quality and durability.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 16),

              // Paragraph 4
              Text(
                'Recognized as the best tile shop in Pondicherry, Bharathiya Tiles strives to bring the latest global trends and products to its customers. Their goal is to help clients create beautiful spaces while ensuring a seamless, stress-free experience.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
