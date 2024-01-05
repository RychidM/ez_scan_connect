import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/data/constants/theme/app_theme.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:ez_scan_connect/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../data/shared/widgets/ez_button.dart';
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
                    boxShadow: themeService.ezThemeState.themeMode ==
                            ThemeMode.dark
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
                    boxShadow: themeService.ezThemeState.themeMode ==
                            ThemeMode.dark
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: GetX<EzThemeService>(
                            init: EzThemeService(),
                            initState: (_) {},
                            builder: (themeMode) {
                              return Container(
                                width: double.infinity,
                                height: EzDimensions.ezDimens60.h,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            themeMode.ezThemeState.themeMode ==
                                                    ThemeMode.light
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
                        themeService.ezThemeState.themeMode == ThemeMode.dark
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
                              onTap: () {},
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
                    onTap: () {},
                    label: "Login",
                  ),
                  Gap(EzDimensions.ezSpacing30.h),
                  Text(
                    "Group 1 inc",
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

class EzRoundedTextField extends StatelessWidget {
  final String label;
  final String? suffixIconUrl;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final bool enableSuggestions;
  final String? Function(String?) validator;
  const EzRoundedTextField({
    super.key,
    this.label = "Email",
    this.suffixIconUrl,
    this.textInputType = TextInputType.emailAddress,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.enableSuggestions = true,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: EzDimensions.ezFont18,
              ),
        ),
        Gap(EzDimensions.ezSpacing12.h),
        TextFormField(
          keyboardType: textInputType,
          textInputAction: textInputAction,
          obscureText: obscureText,
          enableSuggestions: enableSuggestions,
          decoration: InputDecoration(
            suffixIcon: suffixIconUrl != null
                ? Container(
                    padding: EdgeInsets.all(EzDimensions.ezSpacing15.h),
                    height: EzDimensions.ezSpacing25.h,
                    width: EzDimensions.ezSpacing25.h,
                    child: SvgPicture.asset(
                      suffixIconUrl!,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.symmetric(
              horizontal: EzDimensions.ezSpacing20.w,
              vertical: EzDimensions.ezSpacing20.h,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(EzDimensions.ezSpacing25.r),
              borderSide: BorderSide(
                color: EzAppColors.ezTextFieldBorderColor,
                width: 1.11.w,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(EzDimensions.ezSpacing25.r),
              borderSide: BorderSide(
                color: EzAppColors.ezTextFieldBorderColor,
                width: 1.11.w,
              ),
            ),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
