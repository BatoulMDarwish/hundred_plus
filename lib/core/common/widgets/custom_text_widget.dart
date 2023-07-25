import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
final TextStyle? textStyle;
  const CustomText({Key? key, required this.text,this.textStyle, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style:  textStyle
    );
  }
}