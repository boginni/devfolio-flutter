import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../configs/app_dimensions.dart';
import '../configs/app_theme.dart';
import '../configs/app_typography.dart';

class CardLogo extends StatelessWidget {
  const CardLogo({Key? key, required this.size, required this.font})
      : super(key: key);

  final double size;
  final double font;

  @override
  Widget build(BuildContext context) {
    final b1b = AppText.b1b!.copyWith(
      fontSize: AppDimensions.normalize(20 * font),
    );
    final b1l = AppText.b1b!.copyWith(
      fontSize: AppDimensions.normalize(75 * font),
    );
    final double size = AppDimensions.normalize(this.size);

    return Opacity(
      opacity: 0.8,
      child: Container(
        // height: height,
        height: size,
        width: size,
        decoration: BoxDecoration(
          border: Border.all(
              color: AppTheme.isDark(context) ? Colors.white : Colors.black),
        ),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('J', style: b1l),
                  Text('Z', style: b1l),
                ],
              ),
              Positioned.fill(
                // bottom: 0,
                // left: 0,
                // right: 0,

                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Jornada',
                        style: b1b,
                      ),
                      Text(
                        'Z',
                        style: b1b.copyWith(color: Colors.cyan),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
