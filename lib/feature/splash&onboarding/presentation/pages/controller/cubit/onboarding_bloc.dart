
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingState());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  late PageController pageController = PageController();

  void next(context) {
    emit(OnBoardingState());
    print(state.currentPage);
    //if (currentPage > OnBoardingList.length - 1) {
     // CachHelper.saveData(key: 'onBoarding', value: true);
    //  navigateAndFinish(context, const SignIn());
  //  } else {
      pageController.nextPage(
        duration: const Duration(
          milliseconds: 750,
        ),
        curve:Curves.fastLinearToSlowEaseIn ,
      );
    }


  void onPageChanged(int index) {
    emit(OnBoardingState(currentPage:index));
  }
}