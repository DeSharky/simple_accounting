import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:services_list/views/contragents//contragents_controller.dart';
import 'package:services_list/views/home/widgets/list_item.dart';
import 'package:services_list/widgets/add_button.dart';

class ContragentsScreen extends StatelessWidget {

  final controller = Get.put<ContragentsController>(ContragentsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 50, title: const Text('Список контрагентов')),
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: FirebaseAnimatedList(
          itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int idx) {
            return ListItem(
              id: idx,
              surname: snapshot.child('surname').value.toString(),
              name: snapshot.child('name').value.toString(),
              phone: snapshot.child('phone').value.toString(),
            );
          },
          query: controller.ref.child("Contragents"),
        ),
      ),
      floatingActionButton: AddButton(action: () => controller.addItem()),
    );
  }
}
