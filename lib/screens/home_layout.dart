import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider2/prvider/bottom_nav_provider.dart';
import 'package:provider2/screens/settings_sceen.dart';
import 'package:provider2/screens/tasks_screen.dart';
import 'package:provider2/style/app_colors.dart';
import 'package:provider2/widgets/add_task_sheet.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "HomeLayout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavProvider(),
      builder: (context, child) {
        final provider = Provider.of<BottomNavProvider>(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "To Do List",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: provider.screens[provider.currentIndex],
          bottomNavigationBar: BottomAppBar(
            padding: EdgeInsets.zero,
            height: 65.h,
            notchMargin: 14,
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                selectedItemColor: AppColors.mainColor,
                currentIndex: provider.currentIndex,
                onTap: provider.onTap,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: ""),
                ]),
          ),
          floatingActionButton: FloatingActionButton(
            shape: const StadiumBorder(
                side: BorderSide(color: Colors.white, width: 4)),
            backgroundColor: AppColors.mainColor,
            onPressed: () {
              showAddTaskSheet();
            },
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }

  void showAddTaskSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTaskSheet(),
        );
      },
    );
  }
}
