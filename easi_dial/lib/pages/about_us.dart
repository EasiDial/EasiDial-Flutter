import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUsPage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/easidial_logo1.jpeg',
              width: 100,
              height: 100,
            ),
            const Text(
              'EasiDial Care',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Text(
              'EasiDial Care is a mobile application that allows users to easily access medical services. The application allows users to access contact information for Hospitals and Ambulances essential in completing tasks like booking appointments with doctors, nurses, and other medical professionals.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Text(
              'EasiDial Care also offers a platform to learn about the common health issues and emergencies. This is essential in helping users to make informed decisions about their health.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Terms of Use',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            if (_isExpanded)
              Container(
                padding: const EdgeInsets.only(left: 16.0),
                child: const Text(
                  // TODO ADD ALL TERMS OF USE
                  'Terms of Use',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            const SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            if (_isExpanded)
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0),
                child: Text(
                  // TODO ADD ALL PRIVACY POLICY
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
