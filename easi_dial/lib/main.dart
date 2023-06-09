import 'package:easi_dial/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EasiDial",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.indigo),
      home: const HomeScreen(),
    );
  }
}
