import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upgrade_employ/navigation/app_route.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String texte = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.offNamed(AppRoute.login);
          },
          child: Text(
            'celina elecit $texte',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
