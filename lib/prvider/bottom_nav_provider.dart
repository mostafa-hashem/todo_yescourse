import 'package:flutter/widgets.dart';
import 'package:provider2/screens/settings_sceen.dart';
import 'package:provider2/screens/tasks_screen.dart';

class BottomNavProvider extends ChangeNotifier {
  int currentIndex = 0;

List<Widget> screens = [
  const TasksScreen(),
  const SettingsScreen(),
];
  void onTap(int value) {
    currentIndex = value;
    notifyListeners();
  }
}
