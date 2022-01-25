import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:services_list/utils/formatters.dart';
import 'package:services_list/widgets/form/input_decorations.dart';

class ContragentsController extends GetxController {

  void addItem() {
    Get.defaultDialog(
      title: 'Добавить контрагента',
      titlePadding: EdgeInsets.symmetric(vertical: 25.w),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
      radius: 5.r,
      content: SizedBox(
        width: 300,
        child: Column(
          children: [
            InputContainer(
              child: TextField(
                decoration: InputContainer.inputField('Фамилия'),
                keyboardType: TextInputType.text,
                inputFormatters: [Formatters.fio],
              ),
            ),
            SizedBox(height: 10.h),
            InputContainer(
              child: TextField(
                decoration: InputContainer.inputField('Имя'),
                keyboardType: TextInputType.text,
                inputFormatters: [Formatters.fio],
              ),
            ),
            SizedBox(height: 10.h),
            InputContainer(
              child: TextField(
                decoration: InputContainer.inputField('Отчество'),
                keyboardType: TextInputType.text,
                inputFormatters: [Formatters.fio],
              ),
            ),
            SizedBox(height: 10.h),
            InputContainer(
              child: TextField(
                decoration: InputContainer.inputField('Номер телефона'),
                keyboardType: TextInputType.phone,
                inputFormatters: [Formatters.phone],
              ),
            ),
            SizedBox(height: 10.h),
            ElevatedButton(child: Text('Добавить'), onPressed: () {})
          ],
        ),
      )
    );
  }
}
