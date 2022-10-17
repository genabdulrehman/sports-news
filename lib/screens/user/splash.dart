import 'dart:async';
import 'package:azul_football/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  @override
  void initState() {
    _timer = Timer(Duration(seconds: 3), () {
      Get.offAllNamed('/welcome');
    });

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final themeProv = Provider.of<ThemeProvider>(context);
//  setState(() {
      // themeProv.changeTheme();
    // });
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/icon_splash.png',
          width: 210.0,
          height: 210.0,
        ),
      ),
    );
  }
}
