import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/data/constants/theme/app_theme.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:ez_scan_connect/app/routes/app_pages.dart';
import 'package:ez_scan_connect/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../data/shared/widgets/ez_button.dart';
import '../../../data/shared/widgets/ez_textfield.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -EzDimensions.ezSpacing20.w,
            top: -EzDimensions.ezDimens90.h,
            child: GetX<EzThemeService>(
              init: EzThemeService(),
              initState: (_) {},
              builder: (themeService) {
                return Container(
                  height: EzDimensions.ezDimens135.h,
                  width: EzDimensions.ezDimens135.h,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: themeService.ezThemeState.isDarkMode
                        ? [
                            BoxShadow(
                              color: EzAppColors.ezPurple.withOpacity(0.3),
                              blurRadius: 100.r,
                            )
                          ]
                        : [
                            BoxShadow(
                              color: EzAppColors.ezPurpleAlt.withOpacity(0.4),
                              blurRadius: 100.r,
                            )
                          ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            right: -EzDimensions.ezSpacing20.w,
            bottom: -100.h,
            child: GetX<EzThemeService>(
              init: EzThemeService(),
              initState: (_) {},
              builder: (themeService) {
                return Container(
                  height: EzDimensions.ezDimens135.h,
                  width: EzDimensions.ezDimens135.h,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: themeService.ezThemeState.isDarkMode
                        ? [
                            BoxShadow(
                              color: EzAppColors.ezPurple.withOpacity(0.3),
                              blurRadius: 100.r,
                            )
                          ]
                        : [
                            BoxShadow(
                              color: EzAppColors.ezPurpleAlt.withOpacity(0.4),
                              blurRadius: 100.r,
                            )
                          ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                EzDimensions.ezSpacing20.w,
                EzDimensions.ezDimens70.h,
                EzDimensions.ezSpacing20.w,
                EzDimensions.ezDimens60.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: EzDimensions.ezDimens260.h,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Image.asset(Assets.imagesWaiterIllustration),
                        Positioned(
                          bottom: -10.h,
                          left: 0,
                          right: 0,
                          child: GetX<EzThemeService>(
                            init: EzThemeService(),
                            initState: (_) {},
                            builder: (themeMode) {
                              return Container(
                                width: double.infinity,
                                height: EzDimensions.ezDimens70.h,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            !themeMode.ezThemeState.isDarkMode
                                                ? EzAppColors.ezWhite
                                                : EzAppColors.ezBlack,
                                        blurRadius: 10.r,
                                      )
                                    ]),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(EzDimensions.ezSpacing15.h),
                  GetX<EzThemeService>(
                    builder: (themeService) => SvgPicture.asset(
                        themeService.ezThemeState.isDarkMode
                            ? Assets.iconsLogoWithTextWhite
                            : Assets.iconsLogoWithTextBlack),
                  ),
                  Gap(EzDimensions.ezSpacing5.h),
                  Text(
                    'Your journey begins as we unlock culinary delights. Let\'s serve up some excellence together!',
                    style: EzAppTheme.ezBodyMedium.copyWith(
                      fontSize: EzDimensions.ezFont15,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                  Gap(EzDimensions.ezSpacing30.h),
                  SizedBox(
                    height: 260.h,
                    child: Form(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            EzRoundedTextField(
                              validator: (value) => null,
                            ),
                            Gap(EzDimensions.ezSpacing15.h),
                            EzRoundedTextField(
                              label: "Password",
                              obscureText: true,
                              enableSuggestions: false,
                              suffixIconUrl: Assets.iconsPasswordIcon,
                              textInputType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                              validator: (value) => null,
                            ),
                            Gap(EzDimensions.ezSpacing12.h),
                            GestureDetector(
                              onTap: () {
                                HapticFeedback.lightImpact();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Forgot Password?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: EzAppColors.ezPurple,
                                          fontSize: EzDimensions.ezFont15,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(150.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(EzDimensions.ezSpacing20.h),
                  EzRoundedButton(
                    onTap: () => Get.offNamed(Routes.home),
                    label: "Login",
                  ),
                  Gap(EzDimensions.ezSpacing15.h),
                  Text(
                    "Group 1 inc 2024",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: EzDimensions.ezFont12),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
