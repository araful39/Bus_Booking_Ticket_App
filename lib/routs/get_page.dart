import 'package:dimla_express/view/home.dart';
import 'package:dimla_express/view/splash.dart';
import 'package:get/get.dart';

class AppRouts{
  static List<GetPage<String>> appRouts=  [
  GetPage(name: '/', page: () => const Splash()),
  GetPage(name: '/home', page: () => const Home()),
  ];
}