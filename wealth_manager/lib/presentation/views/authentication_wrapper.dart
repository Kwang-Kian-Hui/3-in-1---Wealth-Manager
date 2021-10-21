// import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:wealth_manager/infrastructure/models/auth/auth_state.dart';
// import 'package:wealth_manager/presentation/views/auth/sign_in_screen.dart';
// import 'package:wealth_manager/presentation/views/home_screen.dart';
// import 'package:wealth_manager/presentation/views/splash_screen.dart';
// import 'package:wealth_manager/shared/providers.dart';

// final initProvider = FutureProvider<Unit>((ref) async {
//   print("call check if user is authenticated");
//   final authNotifier = ref.read(authNotifierProvider.notifier);
//   await authNotifier.checkIfUserIsAuthenticated();
//   return unit;
// });

// class AuthenticationWrapper extends ConsumerWidget {
//   const AuthenticationWrapper({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final isInitialPageRendered = ref.watch(splashHasRenderedProvider).state;
//     if (isInitialPageRendered) {
//       print('rendered');
//       ref.listen(initProvider, (value) {});
//       ref.listen<AuthState>(authNotifierProvider, (state) {
//         state.maybeWhen(
//           authenticated: (firebaseUser) {
//             Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
//           },
//           unauthenticated: () {
//             Navigator.of(context).pushReplacementNamed(SignInScreen.routeName);
//           },
//           orElse: () {},
//         );
//       });
//     }
//     return const Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
//   //   return ScreenUtilInit(
//   //     designSize: const Size(411, 731),
//   //     builder: () => MaterialApp(
//   //       title: 'Location Alarm',
//   //       home: SplashScreen(),
//   //       routes: {
//   //         SplashScreen.routeName: (context) => SplashScreen(),
//   //         SignInScreen.routeName: (context) => SignInScreen(),
//   //         HomeScreen.routeName: (context) => HomeScreen(),
//   //         // AlarmSettingsScreen.routeName: (context) => AlarmSettingsScreen(),
//   //         // AddEditAlarmScreen.routeName: (context) =>
//   //         //     ProviderScope(child: AddEditAlarmScreen()),
//   //       },
//   //     ),
//   //   );
//   // @override
//   // Widget build(BuildContext context, WidgetRef ref) {
//   //   final firebaseUser = ref.watch(userStreamProvider);
//   //   if(firebaseUser != null){
//   //     return Text("Signed in");
//   //   }
//   //   return Text("Not signed in");
//   // }
// }
