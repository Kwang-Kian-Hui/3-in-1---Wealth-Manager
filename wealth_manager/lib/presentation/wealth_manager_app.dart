import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_manager/presentation/views/auth/sign_in_screen.dart';
import 'package:wealth_manager/presentation/views/auth/sign_up_screen.dart';
import 'package:wealth_manager/presentation/views/home_screen.dart';
import 'package:wealth_manager/presentation/views/splash_screen.dart';

class WealthManagerApp extends ConsumerStatefulWidget {
  const WealthManagerApp({ Key? key }) : super(key: key);

  // @override
  // _WealthManagerAppState createState() => _WealthManagerAppState();
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WealthManagerAppState();
}

class _WealthManagerAppState extends ConsumerState<WealthManagerApp> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 731),
      builder: () =>  MaterialApp(
        title: 'Location Alarm',
        home:  SplashScreen(),
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          SignInScreen.routeName: (context) => SignInScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          // AlarmSettingsScreen.routeName: (context) => AlarmSettingsScreen(),
          // AddEditAlarmScreen.routeName: (context) =>
          //     ProviderScope(child: AddEditAlarmScreen()),
        },
      ),
    );
  }
}