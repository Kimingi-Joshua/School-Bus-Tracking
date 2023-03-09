import 'package:bustrackingsystem/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:bustrackingsystem/src/constants/colors.dart';
import 'package:bustrackingsystem/src/constants/image_strings.dart';
import 'package:bustrackingsystem/src/constants/sizes.dart';
import 'package:bustrackingsystem/src/constants/text_strings.dart';
import 'package:bustrackingsystem/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
              durationInMs:1600,
            animate: TAnimatePosition(
              topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0,
            ),
            child: const Image(image: AssetImage(tSplashTopIcon)),
          ),
          TFadeInAnimation(
              durationInMs: 2000,
              animate: TAnimatePosition(topBefore: 80, topAfter: 80, leftAfter: tDefaultSize, leftBefore: -80),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName, style: Theme.of(context).textTheme.headline3,),
                Text(tAppTagline, style: Theme.of(context).textTheme.headline2,)
              ],
            ),
          ),
          TFadeInAnimation(
              durationInMs: 2400,
              animate: TAnimatePosition(bottomBefore: 0,bottomAfter: 100),
              child: Image(image: AssetImage(tSplashImage),)),
          TFadeInAnimation(
              durationInMs: 2400,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 60, rightBefore: tDefaultSize, rightAfter: tDefaultSize),
            child: Container(
            width: tsplashContainerSize,
            height: tsplashContainerSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: tPrimaryColor,
            ),
          ),)

        ],
      ),
    );
  }
}

