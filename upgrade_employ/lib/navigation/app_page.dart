
import 'package:get/get.dart';
import 'package:upgrade_employ/navigation/app_route.dart';
import 'package:upgrade_employ/screens/login.dart';
import 'package:upgrade_employ/screens/splash.dart';

class AppPage{
  static  List<GetPage> page =[
    GetPage(name: AppRoute.splash, page: ()=> Splash()),
    GetPage(name: AppRoute.login, page: ()=>Login()),
  ];
}