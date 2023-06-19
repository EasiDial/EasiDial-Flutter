import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
        actions: [
          PopupMenuButton(itemBuilder: (ctx) {
            return [
              const PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.edit),
                    SizedBox(width: 20),
                    Text("Edit image")
                  ],
                ),
              ),
            ];
          })
        ],
      ),
      body: const ProfileScreen(),
    );
  }
}
