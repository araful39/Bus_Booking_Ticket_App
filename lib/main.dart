import 'package:dimla_express/routs/get_page.dart';
import 'package:dimla_express/theme/theme.dart';
import 'package:dimla_express/view/bottom_bar.dart';
import 'package:dimla_express/view/home.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomBarScreen()
        // theme: CustomTheme.lightTheme,
        // darkTheme: CustomTheme.lightTheme,
        // themeMode: ThemeMode.system,
        // initialRoute: '/',
        // getPages: AppRouts.appRouts);
    );
  }
}
