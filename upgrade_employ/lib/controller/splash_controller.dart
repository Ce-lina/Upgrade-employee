import 'dart:async';
import 'package:get/get.dart';
import 'package:upgrade_employ/navigation/app_route.dart';

class SplashController extends GetxController{

  Timer? timer;
 void movePageSplash() {
    timer = Timer.periodic(const Duration(seconds: 5), (Timer) {
      Get.offNamed(AppRoute.login);
    });
  }

/* permet de detruire le Timer lorsque le controlleur n'est
pas utiliser pour ne pas avoir un comportement inattendu*/
  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }

}