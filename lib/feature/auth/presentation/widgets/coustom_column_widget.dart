import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handred_plus/core/common/config/theme/colors.dart';
import 'package:handred_plus/core/common/config/theme/style.dart';
import 'package:handred_plus/core/constant/images/assets.dart';
import 'package:handred_plus/core/constant/strings/app_string.dart';

class CustomColumnWidget extends StatelessWidget {
  const CustomColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          330.verticalSpace,
          Image.asset(Assets.Logo),
          Spacer(),
          Text(
              AppString.textWelcome,
            textAlign: TextAlign.center,
            style: AppStyle.textTheme.titleMedium,
          ),
          Spacer(),
          FractionallySizedBox(
            widthFactor: 0.8,
              child: ElevatedButton(onPressed: (){

              }, child: Text(AppString.SignIn))),
         21.verticalSpace,
          FractionallySizedBox(
            widthFactor: 0.8,
            child: OutlinedButton(onPressed: (){
              context.goNamed(AppString.signUp);
            }, child: Text(
              AppString.createAccount
            )),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
