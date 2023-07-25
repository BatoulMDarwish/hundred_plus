import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handred_plus/core/constant/images/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handred_plus/feature/splash&onboarding/presentation/pages/controller/cubit/onboarding_bloc.dart';
import 'package:handred_plus/feature/splash&onboarding/presentation/pages/widget/custombutton.dart';
import '../controller/cubit/onboarding_state.dart';
import '../widget/slider_onboarding.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
                body: Stack(
                  children: [
                    Image.asset(Assets.backgroundOnboarding
                    ),
                    Padding(
                      padding: REdgeInsetsDirectional.only(
                          top: 200, bottom: 100),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 3,
                              child: CustomSliderOnBoarding(
                                boardController: OnBoardingCubit.get(context).pageController,)),
                           FractionallySizedBox(
                              widthFactor: 0.8,
                              child:state.currentPage==2? CustomButtonOnBoarding(goToLogin: true,):CustomButtonOnBoarding())
                        ],
                      ),
                    ),
                  ],
                )
              // body: ,
            ),
          );
        },
      ),
    );
  }

}
