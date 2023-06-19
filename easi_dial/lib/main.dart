import 'package:easi_dial/home_screen.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'theming.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// The app uses Email and GoogleProvider to sign in.
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
    GoogleProvider(
        /*
      The Google client ID. Primarily required for desktop platforms.
      Ignored on Android and iOS (if iOSPreferPlist is true).
       */
        clientId: ''),
    // ... other providers can be added here if necessary
  ]);

  runApp(EasyDynamicThemeWidget(
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EasiDial",
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: const HomeScreen(),
    );
  }
}
