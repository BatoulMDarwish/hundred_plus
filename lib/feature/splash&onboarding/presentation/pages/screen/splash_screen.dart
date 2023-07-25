import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handred_plus/core/constant/images/assets.dart';
import 'package:handred_plus/feature/splash&onboarding/presentation/pages/screen/on_boarding_screen.dart';

import '../../../../../core/common/widgets/custom_text_widget.dart';
import '../../../../../core/constant/strings/app_string.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () {
          context.replaceNamed(AppString.onboarding);
        });
    return Scaffold(
        body:Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Assets.splash)
            ),
          ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               const Spacer(),
               Padding(
                 padding:REdgeInsetsDirectional.only(end: 50,top: 100),
                 child: SvgPicture.asset(Assets.splashLogo,width: 280.w,height: 280.h,fit: BoxFit.fitWidth,),
               ),
               const Spacer(),
               Text(
                 AppString.hundredPlus,
                 style: Theme.of(context).textTheme.displayLarge,
               ),
               Text(
                 AppString.delivery,
                 style: Theme.of(context).textTheme.displayLarge,
               ),
               79.verticalSpace
             ],
           ),
        ),
    );
  }
}
