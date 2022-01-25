import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services_list/utils/styles_set.dart';

class InputContainer extends StatelessWidget {

  final Widget child;

  const InputContainer({required this.child});

  static InputDecoration inputField(String label) => InputDecoration(
    labelText: label,
    labelStyle: StylesSet.textInputLabel,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    border: InputBorder.none,
    isDense: true,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        border: Border.all(width: 1.w, color: Colors.grey),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: child,
    );
  }
}
