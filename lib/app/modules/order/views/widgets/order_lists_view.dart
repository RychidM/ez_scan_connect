import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

class OrdersListsView extends StatelessWidget {
  const OrdersListsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // height: EzDimensions.ezDimens60.h,
            width: double.maxFinite,
            child: Text(
              "Orders",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: EzDimensions.ezFont24),
            ),
          ),
          Gap(EzDimensions.ezSpacing15.h),
          SizedBox(
            height: 700.h,
            child: ListView.separated(
              padding: EdgeInsets.only(bottom: 100.h),
              primary: true,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return DottedBorderWidget(
                  padding:
                      EdgeInsets.symmetric(horizontal: 1.5.w, vertical: 1.h),
                  radius: EzDimensions.ezSpacing12.r,
                  color: EzAppColors.ezBorderGrey,
                  child: GetX<EzThemeService>(
                    init: EzThemeService(),
                    initState: (_) {},
                    builder: (themeService) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: EzDimensions.ezSpacing16.w,
                          vertical: EzDimensions.ezSpacing16.h,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: themeService.ezThemeState.isDarkMode
                              ? EzAppColors.ezBlack
                              : EzAppColors.ezWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                EzDimensions.ezSpacing12.r),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order ID #${index + 1}23658",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        fontStyle: FontStyle.italic,
                                        fontSize: EzDimensions.ezFont18,
                                        color:
                                            themeService.ezThemeState.isDarkMode
                                                ? EzAppColors.ezWhite
                                                : EzAppColors.ezBlack,
                                      ),
                                ),
                                TextIcon(
                                  prefix: Container(
                                    width: 8.h,
                                    height: 8.h,
                                    decoration: const ShapeDecoration(
                                      color: EzAppColors.ezProgressOrange,
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                  text: "In Progress",
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: EzDimensions.ezFont12,
                                        color: EzAppColors.ezProgressOrange,
                                      ),
                                ),
                              ],
                            ),
                            Gap(EzDimensions.ezSpacing5.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Table",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        fontSize: EzDimensions.ezFont12,
                                      ),
                                ),
                                Gap(EzDimensions.ezSpacing2.h),
                                Text(
                                  'Table 00${index + 1}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        fontSize: EzDimensions.ezFont16,
                                        color:
                                            themeService.ezThemeState.isDarkMode
                                                ? EzAppColors
                                                    .ezDarkModePrimaryTextAlt
                                                : EzAppColors.ezPrimaryTextAlt,
                                      ),
                                ),
                                Gap(EzDimensions.ezSpacing5.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Table",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                fontSize: EzDimensions.ezFont12,
                                              ),
                                        ),
                                        Gap(EzDimensions.ezSpacing2.h),
                                        Text(
                                          "GHS ${4 * (index + 1)}.00",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                  fontSize:
                                                      EzDimensions.ezFont18),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: EzDimensions.ezSpacing10.w,
                                        vertical: EzDimensions.ezSpacing4.h,
                                      ),
                                      decoration: ShapeDecoration(
                                        color: EzAppColors.ezPurple,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              EzDimensions.ezSpacing16.r),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text("13:02",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize:
                                                      EzDimensions.ezFont12,
                                                  color: EzAppColors.ezWhite,
                                                )),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Gap(EzDimensions.ezSpacing15.h);
              },
              itemCount: 7,
            ),
          ),
          // SizedBox(height: 500.h),
        ],
      ),
    );
  }
}
