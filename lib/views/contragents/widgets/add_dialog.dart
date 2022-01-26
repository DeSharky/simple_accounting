import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services_list/utils/formatters.dart';
import 'package:services_list/utils/styles_set.dart';
import 'package:services_list/widgets/form/input_decorations.dart';

class AddDialog extends StatelessWidget {

  final TextEditingController surnameController;
  final TextEditingController nameController;
  final TextEditingController patronymicController;
  final TextEditingController phoneController;
  final VoidCallback btnAction;
  final bool allFieldFilled;

  const AddDialog ({
    required this.surnameController,
    required this.nameController,
    required this.patronymicController,
    required this.phoneController,
    required this.btnAction,
    this.allFieldFilled = false,
  });

  static String isRequired = 'Не все поля заполнены';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!allFieldFilled)
            Padding(padding: EdgeInsets.only(bottom: 10.h), child: Text(isRequired, style: StylesSet.error)),
          InputContainer(
            child: TextField(
              controller: surnameController,
              decoration: InputContainer.inputField('Фамилия'),
              keyboardType: TextInputType.text,
              inputFormatters: [Formatters.firstName],
              autofocus: true,
            ),
          ),
          SizedBox(height: 10.h),
          InputContainer(
            child: TextField(
              controller: nameController,
              decoration: InputContainer.inputField('Имя'),
              keyboardType: TextInputType.text,
              inputFormatters: [Formatters.secondName],
            ),
          ),
          SizedBox(height: 10.h),
          InputContainer(
            child: TextField(
              controller: patronymicController,
              decoration: InputContainer.inputField('Отчество'),
              keyboardType: TextInputType.text,
              inputFormatters: [Formatters.patronymic],
            ),
          ),
          SizedBox(height: 10.h),
          InputContainer(
            child: TextField(
              controller: phoneController,
              decoration: InputContainer.inputField('Номер телефона'),
              keyboardType: TextInputType.phone,
              inputFormatters: [Formatters.phone],
            ),
          ),
          SizedBox(height: 10.h),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => allFieldFilled ? Colors.blue : Colors.grey),
              ),
              child: const Text('Добавить'),
              onPressed: () => allFieldFilled ? btnAction.call() : null,
            ),
          ),
        ],
      ),
    );
  }
}
