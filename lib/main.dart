import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'core/common/config/theme/theme.dart';
import 'core/util/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375,810),
      builder: (context, child) => MaterialApp.router(
        builder: (context, child) => Directionality(child: child!,textDirection: TextDirection.rtl,),
        debugShowCheckedModeBanner: false,

        theme:AppTheme.lightTheme,

       routerConfig: AppRouter().router,

         //home: OnBoardingScreen(),
      ),
    );
  }
}


