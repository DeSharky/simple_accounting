import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services_list/utils/colors_set.dart';

class AddButton extends StatelessWidget {

  final VoidCallback action;

  const AddButton({required this.action});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 55.w,
      height: 55.h,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
      child: Material(
        color: ColorsSet.addButton,
        borderRadius: BorderRadius.circular(30.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(30.w),
          splashColor: Colors.transparent,
          onTap: action.call,
          child: Icon(Icons.add, size: 25.w, color: Colors.white),
        ),
      ),
    );
  }
}