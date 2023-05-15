import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/card_logo.dart';

import 'package:folio/widget/social_links.dart';

import '../../utils/home_utils.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.60,
      child: Stack(
        children: [
          // Positioned(
          //   bottom: AppDimensions.normalize(100),
          //   right: AppDimensions.normalize(10),
          //   child: const EntranceFader(
          //     offset: Offset(0, 0),
          //     delay: Duration(seconds: 1),
          //     duration: Duration(milliseconds: 800),
          //     child: CardLogo(
          //       font: 0.5,
          //       size: 75,
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(50),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      HomeUtils.homeHeadline1,
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  HomeUtils.homeHeadline2,
                  style: AppText.h1b!.copyWith(
                    height: 1,
                  ),
                ),
                Text(
                  HomeUtils.homeHeadline3,
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          ...HomeUtils.quotes.map((e) => TyperAnimatedText(
                                e,
                                speed: const Duration(milliseconds: 50),
                                textStyle: AppText.b1,
                              ))
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
