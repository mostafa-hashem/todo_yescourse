import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTaskSheet extends StatelessWidget {
  const AddTaskSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 21.h, left: 44.w, right: 44.w),
      height: 290.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Add new Task",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "enter your task"),
          ),
          SizedBox(
            height: 30.h,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select time",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Text("12:00 AM", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Color(0xfdf707070)),),
        ],
      ),
    );
  }
}
