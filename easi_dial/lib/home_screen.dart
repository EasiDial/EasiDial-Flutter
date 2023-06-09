import 'package:easi_dial/pages/ambulances.dart';
import 'package:easi_dial/pages/home.dart';
import 'package:easi_dial/pages/hospitals.dart';
import 'package:easi_dial/pages/learn.dart';
import 'package:easi_dial/pages/map.dart';
import 'package:flutter/material.dart';

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
    Icons.local_shipping_outlined,
    Icons.notes_outlined,
  ];

  List<String> bottomBarIconLabels = const [
    "Home",
    "Hospitals",
    "Map",
    "Ambulances",
    "Learn",
  ];

  Widget _getBottomBar() {
    return BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
            5,
            (index) => BottomNavigationBarItem(
                  icon: Icon(bottomBarIconsData[index]),
                  label: bottomBarIconLabels[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> homeScreenPages = [
      HomePage(
        onPageChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      HospitalsPage(),
      MapPage(),
      AmbulancesPage(),
      LearnPage(),
    ];

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("EasiDial Care"),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: const Row(
              children: [
                Icon(Icons.emergency_outlined),
                SizedBox(width: 10),
                Text("Emergency"),
              ],
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
