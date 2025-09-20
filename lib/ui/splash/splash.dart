import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pouchvenue/ui/auth/login.dart';
import 'package:pouchvenue/utils/image-icons.dart';

import '../../utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }
  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, init);
  }

  init() async {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.primaryColor,
      body: Center(
        child: Image.asset(
          ImageIcons.icVenueApp,
          scale: 4,
        ),
      ),
    );
  }
}
