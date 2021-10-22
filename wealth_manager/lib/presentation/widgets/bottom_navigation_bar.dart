import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;
  const AppBottomNavigationBar({
    Key? key,
    required this.onTap,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics_outlined, size: 33.w, color: Colors.black),
          label: "Investment",
          activeIcon: Icon(Icons.analytics_outlined, size: 35.w, color: Colors.black),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance, size: 33.w, color: Colors.black),
          label: "Insurance",
          activeIcon: Icon(Icons.account_balance, size: 35.w, color: Colors.black),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.savings, size: 33.w, color: Colors.black),
          label: "Accounts",
          activeIcon: Icon(Icons.savings, size: 35.w, color: Colors.black),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on_outlined, size: 33.w, color: Colors.black),
          label: "Expenses",
          activeIcon: Icon(Icons.monetization_on_outlined, size: 35.w, color: Colors.black),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, size: 33.w, color: Colors.black),
          label: "Settings",
          activeIcon: Icon(Icons.settings, size: 35.w, color: Colors.black),
        ),
      ],
    );
  }
}
