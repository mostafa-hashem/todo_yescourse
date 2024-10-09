import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h, left: 30.w, right: 37.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
          ),
          SizedBox(height: 23.h,),
          Container(
            padding: const EdgeInsets.all(16),
            width: 319.w,
            height: 50.h,
            decoration: const BoxDecoration(
              border: Border(),
              color: Colors.white
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English"),
                Icon(Icons.keyboard_arrow_down_sharp)
              ],
            ),
          ),
          SizedBox(height: 22.h,),
          Text(
            "Mode",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
          ),
          SizedBox(height: 23.h,),
          Container(
            padding: const EdgeInsets.all(16),
            width: 319.w,
            height: 50.h,
            decoration: const BoxDecoration(
                border: Border(),
                color: Colors.white
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Light"),
                Icon(Icons.keyboard_arrow_down_sharp)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
