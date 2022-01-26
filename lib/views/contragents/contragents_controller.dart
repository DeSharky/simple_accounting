import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:services_list/views/contragents/widgets/add_dialog.dart';

class ContragentsController extends GetxController {

  final ref = FirebaseDatabase.instance.ref();
  final int id = 0;

  final allFieldFilled = false.obs;
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController patronymicController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void onInit() {
    allFieldFilled.value = false;
    surnameController.addListener(() {
      if (surnameController.text.isNotEmpty
          && nameController.text.isNotEmpty
            && patronymicController.text.isNotEmpty
              && phoneController.text.isNotEmpty) {
                allFieldFilled.value = true;
                  } else {
                    allFieldFilled.value = false;
                  }
    });
    surnameController.addListener(() {
      if (surnameController.text.isNotEmpty
          && nameController.text.isNotEmpty
            && patronymicController.text.isNotEmpty
              && phoneController.text.isNotEmpty) {
                allFieldFilled.value = true;
                  } else {
                    allFieldFilled.value = false;
                  }
    });
    phoneController.addListener(() {
      if (surnameController.text.isNotEmpty
          && nameController.text.isNotEmpty
            && patronymicController.text.isNotEmpty
              && phoneController.text.isNotEmpty) {
                allFieldFilled.value = true;
                  } else {
                    allFieldFilled.value = false;
                  }
    });

    super.onInit();
  }

  void addItem() {
    Get.defaultDialog(
      title: 'Добавить контрагента',
      titlePadding: EdgeInsets.symmetric(vertical: 25.w),
      contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
      radius: 5.r,
      content: Obx(() => AddDialog(
        surnameController: surnameController,
        nameController: nameController,
        patronymicController: patronymicController,
        phoneController: phoneController,
        btnAction: addContragent,
        allFieldFilled: allFieldFilled.value,
      ),),
    );
  }

  void addContragent() {
    ref.child('Contragents').child(id.toString()).set({
      'surname': surnameController.text,
      'name': nameController.text,
      'patronymic': patronymicController.text,
      'phone': phoneController.text,
    });
    clearFields();
    Get.back();
  }

  void clearFields() {
    surnameController.clear();
    nameController.clear();
    patronymicController.clear();
    phoneController.clear();
  }
}
