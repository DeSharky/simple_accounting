import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_list/views/home/home_controller.dart';
import 'package:services_list/views/home/widgets/list_item.dart';
import 'package:services_list/widgets/add_button.dart';

class HomeScreen extends StatelessWidget {

  final controller = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 50, title: const Text('Список заказов')),
      body: SizedBox(
        height: double.infinity,
        child: FirebaseAnimatedList(
          itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int idx) {
            return ListItem(
              id: idx,
              surname: snapshot.child('surname').value.toString(),
              name: snapshot.child('name').value.toString(),
            );
          },
          query: controller.ref.child('Orders'),
        ),
      ),
      floatingActionButton: AddButton(action: () => controller.addItem()),
    );
  }
}
