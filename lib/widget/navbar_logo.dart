import 'package:flutter/material.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppTheme.isDark(context) ? Colors.black : Colors.black
        )
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Jornada",
            style: AppText.b1b!.copyWith(
              fontFamily: 'DejaVu Sans',
            ),
          ),
          Text(
            "Z",
            style: AppText.b1b!.copyWith(
              fontFamily: 'DejaVu Sans',
              color: Colors.cyan
            ),
          ),
        ],
      ),
    );
  }
}
