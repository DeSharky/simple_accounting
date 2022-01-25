import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:services_list/views/contragents//contragents_controller.dart';
import 'package:services_list/widgets/add_button.dart';

final controller = Get.put<ContragentsController>(ContragentsController());

class ContragentsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 50, title: const Text('Список контрагентов')),
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ),
      floatingActionButton: AddButton(action: () => controller.addItem()),
    );
  }
}
