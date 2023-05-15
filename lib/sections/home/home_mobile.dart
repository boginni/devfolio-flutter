import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/card_logo.dart';
import 'package:folio/widget/social_links.dart';

import '../../animations/entrance_fader.dart';
import '../../utils/home_utils.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.40,
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
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
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
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(10),
                    ),
                  ],
                ),
                Space.y!,
                Text(
                  HomeUtils.homeHeadline2,
                  style: AppText.h3b!.copyWith(
                    height: 1,
                  ),
                ),
                Text(
                  HomeUtils.homeHeadline3,
                  style: AppText.h3!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Space.y!,
                Row(
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
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
