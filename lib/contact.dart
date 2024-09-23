import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the package

void main() {
  runApp(ContactUsApp());
}

class ContactUsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align content to the left
            children: [
              const SizedBox(height: 100),
              Text(
                'Contact us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 5,
                width: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.red],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () => _makePhoneCall('tel:7500275005'),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, 
                  children: [
                    Icon(Icons.phone, color: Colors.white),
                    const SizedBox(width: 10),
                    Text(
                      '7500275005',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _sendEmail('mailto:Support@bttiles.com'),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.white),
                    const SizedBox(width: 10),
                    Text(
                      'Support@bttiles.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Icon(Icons.location_on, color: Colors.white),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      '146/5, ECR road kottupalayam\nOpp to Raja Rajeshwari Kalyana Mandapam - 605008',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                'Feel Free to Contact us!!!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Text(
                'Note: While user clicks the phone number or email, it will navigate through their contact details.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to launch phone dialer
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to send email
  Future<void> _sendEmail(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
