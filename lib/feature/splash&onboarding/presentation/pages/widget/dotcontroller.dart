
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handred_plus/core/common/config/theme/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/datasource/onboarding_datasource_static.dart';



class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key, required this.boardController}) : super(key: key);
final PageController boardController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller:boardController ,
      count:OnBoardingList.length ,

      effect:
      ExpandingDotsEffect(
       dotColor: AppColors.gray,
        dotHeight: 5.h,
       dotWidth: 31.w,
       activeDotColor:AppColors.orange,
        expansionFactor: 1.05,
      ),
        );
  }
}
