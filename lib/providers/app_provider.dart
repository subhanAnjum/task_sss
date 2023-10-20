import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int selectedTab = 0;
  void changeTab(int tab) => {
        selectedTab = tab,
        notifyListeners(),
      };
}
