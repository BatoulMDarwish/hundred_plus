
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handred_plus/core/common/config/theme/colors.dart';
import 'package:handred_plus/feature/splash&onboarding/presentation/pages/controller/cubit/onboarding_bloc.dart';

import '../../../../../core/common/config/theme/style.dart';
import '../../data/datasource/onboarding_datasource_static.dart';
import 'dotcontroller.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({Key? key, required this.boardController,this.goToLogin=false}) : super(key: key);
   final PageController boardController;
   final bool goToLogin;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
       controller: boardController,
        onPageChanged: (val){
          OnBoardingCubit.get(context).onPageChanged(val);
        },
        itemCount: OnBoardingList.length,
        itemBuilder: (context,i)=>Column(
          children: [
            SvgPicture.asset(
              OnBoardingList[i].image!,
              //  fit:BoxFit.fill
            ),
            20.verticalSpace,
            CustomDotControllerOnBoarding(boardController: boardController),
            36.verticalSpace,
            Text(
              OnBoardingList[i].body!,
              textAlign:TextAlign.center ,
              style: AppStyle.textTheme.bodyMedium
            ),
          ],
        )
    );
  }
}
