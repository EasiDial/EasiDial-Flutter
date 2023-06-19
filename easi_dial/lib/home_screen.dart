import 'package:easi_dial/auth_gate.dart';
import 'package:easi_dial/pages/about_us.dart';
import 'package:easi_dial/pages/ambulances.dart';
import 'package:easi_dial/pages/emergency_button.dart';
import 'package:easi_dial/pages/feedback.dart';
import 'package:easi_dial/pages/home.dart';
import 'package:easi_dial/pages/hospitals.dart';
import 'package:easi_dial/pages/learn.dart';
import 'package:easi_dial/pages/map.dart';
import 'package:easi_dial/pages/medical_information.dart';
import 'package:easi_dial/pages/profile.dart';
import 'package:easi_dial/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'pages/shared.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int currentPageIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> bottomBarIconsData = const [
    Icons.home_outlined,
    Icons.local_hospital_outlined,
    Icons.map_outlined,
    Icons.emergency_outlined,
    Icons.notes_outlined,
  ];

  List<String> bottomBarIconLabels = const [
    "Home",
    "Hospitals",
    "Map",
    "Ambulances",
    "Learn",
  ];

  List<String> appbarTitles = const [
    "EasiDial Care",
    "Hospitals",
    "Map",
    "Ambulances",
    "Learn",
  ];

  Widget _getBottomBar() => BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (index) => setState(() => currentPageIndex = index),
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          bottomBarIconsData.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(bottomBarIconsData[index]),
            label: bottomBarIconLabels[index],
          ),
          growable: false,
        ),
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        selectedItemColor: Theme.of(context).primaryColor,
      );

  @override
  void initState() {
    super.initState();

    userExists = FirebaseAuth.instance.currentUser != null;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> homeScreenPages = [
      HomePage(
        onPageChanged: (index) => setState(() => currentPageIndex = index),
      ),
      const HospitalsPage(),
      const MapPage(),
      const AmbulancesPage(),
      const LearnPage(),
    ];

    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/easidial_logo1.jpeg"),
              const Divider(
                thickness: 4,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.account_circle_outlined),
                    title: const Text("Profile"),
                    onTap: () {
                      nextPage(
                          context: context,
                          page: userExists
                              ? const ProfilePage()
                              : const AuthGate());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.medical_information_outlined),
                    title: const Text("Medical Information"),
                    onTap: () {
                      nextPage(
                          context: context,
                          page: const MedicalInformationPage());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.emergency_outlined),
                    title: const Text("Emergency Button"),
                    onTap: () {
                      nextPage(
                          context: context, page: const EmergencyButtonPage());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.feedback_outlined),
                    title: const Text("Feedback"),
                    onTap: () {
                      nextPage(context: context, page: const FeedbackPage());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.info_outline),
                    title: const Text("About Us"),
                    onTap: () {
                      nextPage(context: context, page: const AboutUsPage());
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(appbarTitles[currentPageIndex]),
        actions: [
          SizedBox(
            height: 32,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        icon: const Icon(
                          Icons.emergency_outlined,
                          color: Colors.red,
                        ),
                        title: const Text("Emergency!"),
                        content: const Text(
                          "You are about to trigger an emergency. Please confirm.",
                          style: TextStyle(fontSize: 16),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(ctx);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "We have received a notification about your emergency. Stay calm an ambulance is on it's way.",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    duration: Duration(seconds: 6),
                                  ),
                                );
                              },
                              child: const Text(
                                "Confirm",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 18),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(ctx);
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 18),
                              )),
                        ],
                      );
                    });
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.red),
                foregroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.white),
              ),
              child: const Row(
                children: [
                  Icon(Icons.emergency_outlined),
                  SizedBox(width: 10),
                  Text("Emergency"),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: homeScreenPages[currentPageIndex],
      bottomNavigationBar: _getBottomBar(),
    );
  }
}
