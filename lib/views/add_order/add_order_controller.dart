import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_list/views/contragents/contragents_screen.dart';

class AddOrderController extends GetxController {

  final TextEditingController contragentsController = TextEditingController();

  void contragentsList() => Get.to(() => ContragentsScreen());

}
