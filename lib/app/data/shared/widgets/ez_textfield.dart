
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_dimensions.dart';

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