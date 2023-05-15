import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/home_utils.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/card_logo.dart';
import 'package:folio/widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 1.025,
      padding: Space.h,
      child: Row(
        children: [
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   // top: 0,
          //   child: ,
          // ),
          Flexible(
            child: Container(
              margin: EdgeInsets.fromLTRB(
                AppDimensions.normalize(30),
                AppDimensions.normalize(80),
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
                        style: AppText.b1!.copyWith(
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
                      fontSize: AppDimensions.normalize(25),
                      height: 1,
                    ),
                  ),
                  Text(
                    HomeUtils.homeHeadline3,
                    style: AppText.h1!.copyWith(
                      fontFamily: 'Montserrat',
                      fontSize: AppDimensions.normalize(18),
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
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: AppDimensions.normalize(45)),
            child: EntranceFader(
              offset: const Offset(0, 0),
              delay: const Duration(seconds: 1),
              duration: const Duration(milliseconds: 800),
              child: CardLogo(
                font: 1,
                size: size.width < 1200
                    ? 125
                    : size.width < 1500
                        ? 150
                        : 175,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
