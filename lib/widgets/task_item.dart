import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider2/style/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17.w, right: 20.w),
      width: 352,
      height: 115,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          VerticalDivider(
            thickness: 4,
            indent: 20,
            endIndent: 20,
            color: AppColors.mainColor,
          ),
          SizedBox(
            width: 25.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Play basket ball",
                style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.h,
              ),
              const Row(
                children: [
                  Icon(Icons.access_time_outlined),
                  Text("10:30 AM"),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 69.w,
            height: 34.h,
            decoration: BoxDecoration(color: AppColors.mainColor, borderRadius: BorderRadius.circular(10.r)),
            child: const Icon(Icons.done),
          ),
        ],
      ),
    );
  }
}
