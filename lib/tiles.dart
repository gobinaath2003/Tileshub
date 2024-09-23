import 'package:flutter/material.dart';

void main() {
  runApp(TilesApp());
}

class TilesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        backgroundColor: Colors.black,
        appBar: AppBar(
        
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildTileSection(
                  'Tiles adhesive is a specialized bonding material used to fix tiles to surfaces such as floors, walls, or countertops. It ensures a strong and durable bond between the tile and the substrate. Adhesives for tiles are usually cement-based, ready-mixed, or epoxy-based, depending on the type of tiles and the surface.',
                  'assets/breading.png',
                ),
                SizedBox(height: 20),
                buildTileSection(
                  'Tile grout is a dense fluid used to fill the gaps between tiles after they are installed. It not only enhances the aesthetic appearance of tiled surfaces but also plays a critical role in securing tiles and preventing dirt, moisture, and debris from getting underneath.',
                  'assets/adhesive.png',
                ),
                SizedBox(height: 20),
                buildTileSection(
                  'Tile beading is a protective trim or edging used along the edges of tiled surfaces, particularly at external corners, where the tiles meet other materials, or where there a sharp finish.',
                  'assets/grout.png',
                ),
                SizedBox(height: 20),
                buildTileSection(
                  'Tile spacers are small, cross-shaped or T-shaped plastic tools used during tile installation to maintain consistent spacing between tiles. They help ensure even gaps (called grout lines) between tiles, which are later filled with grout',
                  'assets/spacers.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTileSection(String description, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Arial',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}