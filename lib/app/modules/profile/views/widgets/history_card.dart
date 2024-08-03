import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:ez_scan_connect/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

class EzOrderHistoryCard extends StatelessWidget {
  final String title;
  final String imgPath;
  final VoidCallback onTap;
  const EzOrderHistoryCard({
    super.key,
    this.imgPath = Assets.iconsHistory,
    this.title = "Order History",
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<EzThemeService>(
      init: EzThemeService(),
      initState: (_) {},
      builder: (themeService) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: EzDimensions.ezSpacing20.w,
                vertical: EzDimensions.ezSpacing20.h),
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.w,
                  color: themeService.ezThemeState.isDarkMode
                      ? EzAppColors.ezDarkModeBorderGrey
                      : EzAppColors.ezBorderGrey),
              borderRadius: BorderRadius.circular(EzDimensions.ezDimens90.r),
            )),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: EzDimensions.ezFont17),
              ),
              SvgPicture.asset(imgPath),
            ]),
          ),
        );
      },
    );
  }
}