import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handred_plus/core/constant/strings/app_string.dart';

import '../controller/cubit/onboarding_bloc.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({Key? key,this.goToLogin=false}) : super(key: key);
final  bool goToLogin ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          print('$goToLogin');

          if(goToLogin) {
          context.replaceNamed(AppString.welcome);
          } else {
            print('batoul');
            OnBoardingCubit.get(context).next(context);
          }
        },
        child: const Text(
         AppString.next
        ),

    );
  }
}
