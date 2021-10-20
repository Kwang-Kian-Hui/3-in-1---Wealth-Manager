import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_manager/infrastructure/models/auth_state.dart';
import 'package:wealth_manager/shared/providers.dart';

class AuthenticationWrapper extends ConsumerWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initProvider, (value) {});
    ref.listen<AuthState>(authNotifierProvider, (state) {
      state.maybeWhen(
        authenticated: (firebaseUser) {
          // navigate home page
          // Navigator.of(context).pushNamed(routeName);
        },
        unauthenticated: () {
          // Navigator.of(context).pushReplacementNamed(routeName);
        },
        orElse: () {},
      );
    });

    return ScreenUtilInit(
      designSize: const Size(411, 731),
      builder: () => MaterialApp(
        title: 'Location Alarm',
        theme: ThemeData(
          // fontFamily: 'Comfortaa',
          scaffoldBackgroundColor: Colors.white,
          // appBarTheme: appBarTheme,
          brightness: Brightness.light,
          canvasColor: Colors.white,
          // textTheme: appTextTheme,
        ),
        routes: {
          
          // ProminentDisclosureScreen.routeName: (context) => ProminentDisclosureScreen(),
          // AlarmListScreen.routeName: (context) => AlarmListScreen(),
          // AlarmSettingsScreen.routeName: (context) => AlarmSettingsScreen(),
          // AddEditAlarmScreen.routeName: (context) =>
          //     ProviderScope(child: AddEditAlarmScreen()),
        },
      ),
    );
  }
  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   final firebaseUser = ref.watch(userStreamProvider);
  //   if(firebaseUser != null){
  //     return Text("Signed in");
  //   }
  //   return Text("Not signed in");
  // }
}
