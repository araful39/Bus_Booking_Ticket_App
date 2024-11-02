import 'package:dimla_express/view/home.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  nextScreen()async{

    await Future.delayed(Duration(seconds: 2));
    Get.offAll(()=>Home());

  }
  @override
  void onInit() {

    super.onInit();
    nextScreen();
  }

}