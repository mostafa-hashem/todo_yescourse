import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 59.h,
        width: 315.w,
        decoration: BoxDecoration(
            color: Color(0xff4D47C3), borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        )),
      ),
    );
  }
}
