import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItem extends StatelessWidget {

  final int id;
  final String surname;
  final String name;
  final String phone;

  const ListItem({this.id = 0, this.surname = '', this.name = '', this.phone = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      color: id.isEven ? Colors.black12 : Colors.grey,
      child: Row(
        children: [
          Text(id.toString()),
          SizedBox(width: 10.w),
          Text(surname),
          SizedBox(width: 5.w),
          Text(name),
          SizedBox(width: 5.w),
          Text(phone),
        ],
      ),
    );
  }
}
