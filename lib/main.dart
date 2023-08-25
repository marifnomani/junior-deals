


import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'Welcome.dart';
import 'splash.dart';
import 'login.dart';
import 'registration.dart';
import 'forget.dart';
import 'contact.dart';
import 'about.dart';
import 'dashboard.dart';
import 'xbox.dart';
import 'headphone.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash':(context)=> Home(),
      'welcome':(context)=>Welcome(),
      'login': (context) =>Login(),
      'registration':(context) =>Register(),
      'forget' : (context)=> Forget(),
      'contact': (context)=> Contact(),
      'about': (context)=> About(),
      'dashboard':(context) => Dashboard(),
      'xbox':(context)=> Xbox(),
      'headphone' :(context) => Headphone(),
    },
  )
  );
}
