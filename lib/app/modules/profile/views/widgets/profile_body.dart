import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:ez_scan_connect/app/modules/profile/views/widgets/history_card.dart';
import 'package:ez_scan_connect/app/modules/profile/views/widgets/inflow_custom_paint_card.dart';
import 'package:ez_scan_connect/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(EzDimensions.ezSpacing30.h),
        GetX<EzThemeService>(
          init: EzThemeService(),
          initState: (_) {},
          builder: (themeService) {
            return Container(
              padding: EdgeInsets.symmetric(
                  horizontal: EzDimensions.ezSpacing6.w,
                  vertical: EzDimensions.ezSpacing6.h),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1.w,
                      color: themeService.ezThemeState.isDarkMode
                          ? EzAppColors.ezDarkModeBorderGreyAlt
                          : EzAppColors.ezBorderGreyAlt),
                  borderRadius:
                      BorderRadius.circular(EzDimensions.ezSpacing25.r),
                ),
                color: themeService.ezThemeState.isDarkMode
                    ? EzAppColors.ezDarkModeCardBgColor
                    : EzAppColors.ezCardBgColor,
              ),
              child: Row(
                children: [
                  Container(
                    height: EzDimensions.ezSpacing77.h,
                    width: EzDimensions.ezSpacing77.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(EzDimensions.ezSpacing25.r),
                      ),
                      color: EzAppColors.ezWhite,
                    ),
                  ),
                  Gap(EzDimensions.ezSpacing16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Waiter",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: EzDimensions.ezFont15,
                                  ),
                        ),
                        Text("Patience Aku Gyifa",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontSize: EzDimensions.ezFont20,
                                )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "T234543A",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: EzDimensions.ezFont15,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: EzDimensions.ezSpacing6.w,
                                  bottom: EzDimensions.ezSpacing6.h),
                              child: SizedBox(
                                width: EzDimensions.ezSpacing30.w,
                                height: EzDimensions.ezSpacing30.w,
                                child: SvgPicture.asset(
                                  Assets.iconsDishIcon,
                                  color: EzAppColors.ezPurple,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Gap(EzDimensions.ezSpacing20.h),
        const EzInflowCustomPaint(),
        Gap(EzDimensions.ezSpacing25.h),
        EzOrderHistoryCard(onTap: () {}),
        Gap(EzDimensions.ezSpacing10.h),
        EzOrderHistoryCard(
            title: "Settings", imgPath: Assets.iconsSettings, onTap: () {}),
      ],
    );
  }
}
