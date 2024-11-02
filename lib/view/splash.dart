
import 'package:dimla_express/controller/ui_controller/splash_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return  Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Dimla",
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Text("Travels",style: Theme.of(context).textTheme.displayMedium),
          ],
        ),
      ),
    );
  }
}
