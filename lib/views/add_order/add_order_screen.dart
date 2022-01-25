import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:services_list/utils/formatters.dart';
import 'package:services_list/views/add_order/add_order_controller.dart';
import 'package:services_list/widgets/form/input_decorations.dart';

final controller = Get.put<AddOrderController>(AddOrderController());

class AddOrder extends StatelessWidget {

  final TextEditingController dateController;

  const AddOrder({required this.dateController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 50, title: const Text('Добавить заказ')),
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputContainer(
                child: TextField(
                  controller: dateController,
                  decoration: InputContainer.inputField('Дата'),
                ),
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: controller.contragentsList,
                child: InputContainer(
                  child: TextField(
                    controller: controller.contragentsController,
                    decoration: InputContainer.inputField('Контрагент'),
                    enabled: false,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              InputContainer(child: TextField(decoration: InputContainer.inputField('Устройство'))),
              SizedBox(height: 10.h),
              InputContainer(
                child: TextField(
                  decoration: InputContainer.inputField('IMEI'),
                  keyboardType: TextInputType.number,
                  inputFormatters: [Formatters.imei],
                ),
              ),
              SizedBox(height: 10.h),
              InputContainer(
                child: TextField(
                  keyboardType: TextInputType.text,
                  inputFormatters: [Formatters.serial],
                  decoration: InputContainer.inputField('SN'),
                ),
              ),
              SizedBox(height: 10.h),
              InputContainer(
                child: TextField(
                  minLines: 10,
                  maxLines: 20,
                  decoration: InputContainer.inputField('Неисправность'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
