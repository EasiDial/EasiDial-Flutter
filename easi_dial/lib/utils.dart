import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

//Navigation - next page
dynamic nextPage({required context, required page}) {
  Navigator.push(
      context, PageTransition(type: PageTransitionType.fade, child: page));
}

dynamic nextPageReplace({required context, required page}) {
  Navigator.pushReplacement(
      context, PageTransition(type: PageTransitionType.fade, child: page));
}
