import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services_list/utils/colors_set.dart';

class StylesSet {
  StylesSet._();

  static TextStyle get defaultStyle => TextStyle(
        fontSize: 14.sp,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textInputLabel => defaultStyle.copyWith(color: ColorsSet.greyLabel);
}