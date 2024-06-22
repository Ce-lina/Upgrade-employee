import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upgrade_employ/component/constante.dart';
import 'package:upgrade_employ/navigation/app_route.dart';
import 'package:upgrade_employ/controller/splash_controller.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String texte = '';
  SplashController controller = SplashController();
  @override
  Widget build(BuildContext context) {
    controller.movePageSplash();
    return Scaffold(
      body: Center(
        child: Image.asset(
          '${Constante.imagePath}WhatsApp Image 2024-06-12 at 10.30.37_058d7d5f.jpg',
        ),
      ),
    );
  }
}
