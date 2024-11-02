import 'package:dimla_express/view/home.dart';
import 'package:dimla_express/view/ticket.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomController extends GetxController{

  RxInt currentIndex=0.obs;

  RxList<Widget> pages=<Widget>[
    const Home(),
    const Ticket()

  ].obs;



}