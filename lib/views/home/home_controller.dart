import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:services_list/views/add_order/add_order_screen.dart';

class HomeController extends GetxController {

  final TextEditingController dateController = TextEditingController();

  final ref = FirebaseDatabase.instance.ref();

  void writeEntry() {
    ref.child('2').set({'name': 'Гена', 'surname': 'Петров'});
  }

  void addItem() {
    //ref.child('2').set({'name': 'Гена', 'surname': 'Петров'});
    dateController.text = DateFormat('dd.MM.yyy').format(DateTime.now());
    Get.to(() => AddOrder(dateController: dateController));
  }
}
