import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Book());
}

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Booking(),
    );
  }
}

class Booking extends StatefulWidget {
  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<Booking> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _locationController = TextEditingController();
  final _sourceController = TextEditingController();

  // Function to launch WhatsApp with pre-filled message
  _sendWhatsAppMessage() async {
    String name = _nameController.text;
    String phone = _phoneController.text;
    String location = _locationController.text;
    String source = _sourceController.text;

    if (name.isEmpty || phone.isEmpty || location.isEmpty || source.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all the required fields'))
      );
      return;
    }

    String message = "Name: $name\nPhone: $phone\nLocation: $location\nHeard From: $source";
    String url = "https://wa.me/919876543210?text=${Uri.encodeComponent(message)}"; // Add the country code and phone number here

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch WhatsApp'))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Book Now!!!'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name*',
                suffixIcon: Icon(Icons.person, color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(30),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone number*',
                suffixIcon: Icon(Icons.phone, color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(30),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Location*',
                suffixIcon: Icon(Icons.location_on, color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(30),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _sourceController,
              decoration: InputDecoration(
                labelText: 'Where did you hear this*',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(30),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _sendWhatsAppMessage,
              icon: Icon(Icons.send),
              label: Text('Book now',style:TextStyle(color:Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                iconColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
