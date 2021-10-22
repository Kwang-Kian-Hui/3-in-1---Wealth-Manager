import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// BottomNavigationBar AppBottomNavigationBar(){
//   return BottomNavigationBar(

//   )
// }

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics_outlined, size: 33.w),
          label: "Investment",
          activeIcon: Icon(Icons.analytics_outlined, size: 35.w),
        )
      ],
    );
  }
}