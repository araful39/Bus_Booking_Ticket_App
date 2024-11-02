import 'package:dimla_express/view/home.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  nextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => const Home());
  }

  @override
  void onInit() {
    super.onInit();
    nextScreen();
  }
}
