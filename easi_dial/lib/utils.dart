import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:page_transition/page_transition.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

// Navigation - next page
dynamic nextPage({required context, required page}) {
  Navigator.push(
      context, PageTransition(type: PageTransitionType.fade, child: page));
}

// Navigation - replace
dynamic nextPageReplace({required context, required page}) {
  Navigator.pushReplacement(
      context, PageTransition(type: PageTransitionType.fade, child: page));
}

Future<void> makePhoneCall() async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: "+254726371714",
  );
  await launchUrl(launchUri);
}

Future<void> makeDirectPhoneCall() async {
  //when call permission is granted:
  await FlutterPhoneDirectCaller.callNumber('+254726371714');
  //else not granted, just show phone number
  if (await Permission.phone.isDenied) {
    makePhoneCall();
  }
}

Future<void> openWhatsApp() async {
  final uri = Uri.parse("https://wa.me/254726371714");
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    // can't launch url
  }
}
