import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handred_plus/core/constant/images/assets.dart';
import 'package:handred_plus/feature/auth/presentation/widgets/coustom_column_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: AlignmentDirectional.topStart,
              image:AssetImage(Assets.welcome),
              fit: BoxFit.fitWidth
            )
          ),
          child: CustomColumnWidget(),
        ),
    );
  }
}
