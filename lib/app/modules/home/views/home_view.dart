import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:ez_scan_connect/app/modules/home/controllers/home_state.dart';
import 'package:ez_scan_connect/app/modules/order/views/order_view.dart';
import 'package:ez_scan_connect/app/modules/profile/views/profile_view.dart';
import 'package:ez_scan_connect/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../data/constants/app_dimensions.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const animationDuration = Duration(milliseconds: 200);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(-2.5.w, 0),
            child: Container(
              height: EzDimensions.ezDimens205.h,
              width: EzDimensions.ezDimens205.h,
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: EzAppColors.ezPurpleAlt.withOpacity(0.3),
                    blurRadius: EzDimensions.ezDimens130.r,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 18.w,
            right: 18.w,
            bottom: EzDimensions.ezSpacing18.h,
            top: EzDimensions.ezSpacing28.h,
            child: Obx(
              () => AnimatedSwitcher(
                duration: animationDuration,
                child: controller.homeState.navBarState == NavBarState.home
                    ? const OrderView()
                    : const ProfileView(),
              ),
            ),
          ),
          Positioned(
            left: EzDimensions.ezSpacing12.w,
            right: EzDimensions.ezSpacing12.w,
            top: 0,
            bottom: 0,
            child: EzBottomNavBar(controller: controller),
          ),
        ],
      ),
    );
  }
}

class EzBottomNavBar extends StatelessWidget {
  const EzBottomNavBar({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: EzDimensions.ezSpacing50.h,
          left: 0,
          right: 0,
          child: GetX<EzThemeService>(
            init: EzThemeService(),
            initState: (_) {},
            builder: (ezThemeService) {
              return GlassmorphicContainer(
                width: 407.w,
                height: 80.h,
                borderRadius: EzDimensions.ezSpacing50.r,
                border: 0.0,
                blur: 1,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: !ezThemeService.ezThemeState.isDarkMode
                        ? [
                            EzAppColors.ezNavBarWhiteColor,
                            EzAppColors.ezWhite.withOpacity(0.5),
                          ]
                        : [
                            EzAppColors.ezWhite.withOpacity(0.1199),
                            EzAppColors.ezWhite.withOpacity(0.1199)
                          ],
                    stops: const [
                      0.1,
                      1,
                    ]),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    EzAppColors.ezWhite.withOpacity(0.5),
                    EzAppColors.ezWhite.withOpacity(0.5)
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                  child: Stack(
                    children: [
                      SlideTransition(
                        position: controller.homeState.animationOffset,
                        child: Container(
                          width: 197.w,
                          height: double.maxFinite,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                EzDimensions.ezSpacing50.r),
                            color: EzAppColors.ezPurple,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => controller.slideToRight(),
                            child: SizedBox(
                              height: double.maxFinite,
                              width: 197.w,
                              child: Center(
                                child: TextIcon(
                                  spacing: 10,
                                  prefix: SvgPicture.asset(
                                    Assets.iconsHome,
                                    color: controller.homeState.navBarState ==
                                            NavBarState.home
                                        ? EzAppColors.ezWhite
                                        : EzAppColors.ezSecondaryTextColor,
                                  ),
                                  text: "Home",
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: controller
                                                      .homeState.navBarState ==
                                                  NavBarState.home
                                              ? EzAppColors.ezWhite
                                              : EzAppColors
                                                  .ezSecondaryTextColor,
                                          fontSize: EzDimensions.ezFont20),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.slideToLeft(),
                            child: SizedBox(
                              height: double.maxFinite,
                              width: 197.w,
                              child: Center(
                                child: TextIcon(
                                  spacing: 10,
                                  prefix: SvgPicture.asset(
                                    Assets.iconsProfileIcon,
                                    color: controller.homeState.navBarState ==
                                            NavBarState.profile
                                        ? EzAppColors.ezWhite
                                        : EzAppColors.ezSecondaryTextColor,
                                  ),
                                  text: "Profile",
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: controller
                                                      .homeState.navBarState ==
                                                  NavBarState.profile
                                              ? EzAppColors.ezWhite
                                              : EzAppColors
                                                  .ezSecondaryTextColor,
                                          fontSize: EzDimensions.ezFont20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
