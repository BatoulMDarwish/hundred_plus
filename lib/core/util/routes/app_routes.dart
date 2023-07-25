import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:handred_plus/core/constant/strings/app_string.dart';
import 'package:handred_plus/feature/auth/presentation/pages/create_account.dart';
import 'package:handred_plus/feature/auth/presentation/pages/welcome.dart';

import '../../../feature/splash&onboarding/presentation/screen/on_boarding_screen.dart';
import '../../../feature/splash&onboarding/presentation/screen/splash_screen.dart';




class AppRouter {
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter router =GoRouter(
      initialLocation: '/splash',
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      routes: [
                GoRoute(
                  name: AppString.splash,
                  path:'/splash' ,
                  builder: (context, state) => SplashScreen(),
                    routes:[
                      GoRoute(
                        name: AppString.onboarding,
                        path: 'onboarding',
                        builder: (context, state) => OnBoardingScreen(),
                        routes: [
                          GoRoute(
                              name:AppString.welcome,
                              path: 'welcome',
                              builder: (context, state) => WelcomeScreen(),
                          routes: [
                            GoRoute(
                                name:AppString.signUp,
                                path: 'signUp',
                                builder: (context, state) => SignUp(),)
                          ]
                          )
                        ]
                      ),
                    ]
                ),

  ]

        );
}