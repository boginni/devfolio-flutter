import 'package:flutter/foundation.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/utils/work_utils.dart';
import 'package:folio/widget/card_logo.dart';

import 'package:folio/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: AboutUtils.resjHeadLine,
          ),
          const CustomSectionSubHeading(
            text: AboutUtils.resjSubtitle,
          ),
          Space.y1!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CardLogo(size: 75, font: 0.5),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          InkWell(
            onTap: () => openURL(AboutUtils.link),
            child: Text(
              AboutUtils.labelLink,
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.resjTitle,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.resjDetails,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            AboutUtils.developedWith,
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
                )
                .toList(),
          ),
          Space.y!,
          // Divider(
          //   color: Colors.grey[800],
          //   thickness: AppDimensions.normalize(0.5),
          // ),
          // SizedBox(
          //   height: height * 0.02,
          // ),
          // const AboutMeData(
          //   data: "Name",
          //   information: "Muhammad Hamza",
          // ),
          // const AboutMeData(
          //   data: "Email",
          //   information: "hamza.6.shakeel@gmail.com",
          // ),
          // Space.y!,
          // OutlinedButton(
          //     child: const Text("Resume"),
          //     onPressed: () {
          //       kIsWeb
          //           ? html.window.open(StaticUtils.resume, "pdf")
          //           : openURL(StaticUtils.resume);
          //     }),
          // Space.y!,
          // Wrap(
          //     alignment: WrapAlignment.center,
          //     crossAxisAlignment: WrapCrossAlignment.center,
          //     children: WorkUtils.logos
          //         .asMap()
          //         .entries
          //         .map(
          //           (e) => CommunityIconBtn(
          //             icon: e.value,
          //             link: WorkUtils.communityLinks[e.key],
          //             height: WorkUtils.communityLogoHeight[e.key],
          //           ),
          //         )
          //         .toList()),
        ],
      ),
    );
  }
}
