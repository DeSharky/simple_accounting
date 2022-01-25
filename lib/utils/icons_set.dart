import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsSet extends StatelessWidget {
  final String icon;
  final Color? color;
  final double? width;
  final double? height;

  const IconsSet(this.icon, {this.color, this.width, this.height});

  //static String get add => Icons.add;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon, color: color, width: width, height: height);
  }
}
