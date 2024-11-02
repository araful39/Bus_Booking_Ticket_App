import 'package:dimla_express/controller/ui_controller/bottom_controller.dart';
import 'package:dimla_express/utills/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BottomController bottomController = Get.put(BottomController());
    return Scaffold(
      body: Obx(
        () => bottomController.pages
            .elementAt(bottomController.currentIndex.value),
      ),
      bottomNavigationBar: Obx(
          ()=> BottomNavigationBar(
            currentIndex: bottomController.currentIndex.value,
            selectedItemColor: AppColors.primaryColor,
            onTap: (index) {
              bottomController.currentIndex.value = index;
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: "Ticket"),
            ],
          ),
      ),
    );
  }
}
