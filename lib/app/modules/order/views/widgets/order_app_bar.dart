import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:ez_scan_connect/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OrderPageAppBar extends StatelessWidget {
  const OrderPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GetX<EzThemeService>(
          init: EzThemeService(),
          initState: (_) {},
          builder: (themeService) {
            return SvgPicture.asset(themeService.ezThemeState.isDarkMode
                ? Assets.iconsLogoWithTextWhite
                : Assets.iconsLogoWithTextBlack);
          },
        ),
        Container(
          height: EzDimensions.ezDimens60.h,
          width: EzDimensions.ezDimens60.h,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1.w,
                color: EzAppColors.ezBorderGreyAlt,
              ),
              borderRadius: BorderRadius.circular(EzDimensions.ezDimens60.r),
            ),
          ),
        ),
      ],
    );
  }
}
