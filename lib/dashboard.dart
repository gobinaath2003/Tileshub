import 'package:flutter/material.dart';
import 'package:tileshub/aboutus.dart';
import 'package:tileshub/book.dart';
import 'package:tileshub/consult.dart';
import 'package:tileshub/contact.dart';
import 'package:tileshub/delivered.dart';
import 'package:tileshub/feedback.dart';
import 'package:tileshub/luxirious.dart';
import 'package:tileshub/produc.dart';
import 'package:tileshub/tiles.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoreHomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // Dark background for the body
        primaryColor: Color(0xFF6C4F1C), // Brown theme color
      ),
    );
  }
}

class StoreHomePage extends StatefulWidget {
  @override
  _StoreHomePageState createState() => _StoreHomePageState();
}

class _StoreHomePageState extends State<StoreHomePage> {
 void _onViewDirectionPressed() async {
  const String googleMapsUrl = "https://www.google.com/maps/search/?api=1&query=Your+Location";
  Uri url = Uri.parse(googleMapsUrl);  // Parse the URL properly

  if (!await canLaunchUrl(url)) {
    // If the URL cannot be launched, show an alert
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Error"),
        content: Text("Could not open Google Maps."),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }
}



  void _navigateToLuxaryPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LuxuriousTilesScreen()));
  }

  void _navigateToDeliveredPage() {
    Navigator.push(context, MaterialPageRoute(builder:(context)=>delivery() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0), // Custom size for AppBar
        child: AppBar(
          backgroundColor: Color(0xFF6C4F1C), // Brown color for AppBar
          title: Text(
            "Welcome to our Store",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF6C4F1C),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.details),
              title: Text('About us'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>AboutUsScreen() ));
              },
            ),
                        ListTile(
              leading: Icon(Icons.book),
              title: Text('Appointement'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Book() ));
              },
            ),
                        ListTile(
              leading: Icon(Icons.online_prediction),
              title: Text('consult'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>BookingForm() ));
              },
            ),
                        ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('Conatct'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>ContactUsApp() ));
              },
            ),
                        ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>ToDoApp() ));
              },
            ),
                        ListTile(
              leading: Icon(Icons.home),
              title: Text('Product'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Product() ));
              },
            ),
                        ListTile(
              leading: Icon(Icons.list),
              title: Text('Tiles'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>TilesApp() ));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Categories",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildCategoryChip("Fashion"),
                SizedBox(width: 8),
                _buildCategoryChip("Luxary"),
                SizedBox(width: 8),
                _buildCategoryChip("Model tiles"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(
                  icon: Icons.check_box,
                  label: "Luxary",
                  onTap: _navigateToLuxaryPage,
                ),
                SizedBox(width: 16),
                _buildIconButton(
                  icon: Icons.delivery_dining,
                  label: "Delivered",
                  onTap: _navigateToDeliveredPage,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.white,
              height: 200,
              child: Image.asset(
                'assets/map.png', // Placeholder map
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: _onViewDirectionPressed,
                child: Text("View direction"),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.grey, // Button color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.black,
      labelStyle: TextStyle(color: Colors.white),
    );
  }

  Widget _buildIconButton({IconData? icon, String? label, VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        color: Color(0xFFE6E623),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.black),
          SizedBox(height: 10),
          Text(label ?? '', style: TextStyle(color: Colors.black, fontSize: 18)), // Default to empty string if null
        ],
      ),
    ),
  );
}

}
