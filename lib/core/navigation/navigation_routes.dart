import 'package:englishPracticeApp/view/home_view.dart';
import 'package:englishPracticeApp/view/splash_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(initialRoute: "/", routes: {
    "/": (context) => SplashScreen(),
    // "/homeview": (context) => FirstPage(),
  }));
}
// Navigator.pushNamed(context, "/homeview")
