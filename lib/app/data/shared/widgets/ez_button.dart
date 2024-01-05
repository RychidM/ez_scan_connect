import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class EzRoundedButton extends StatelessWidget {
  final Widget? child;
  final String label;
  final double labelTextSize;
  final Color labelColor;
  final VoidCallback onTap;
  final Color btnColor;
  final double btnHeight;
  final double btnWidth;
  final double borderRadius;
  final double elevation;
  final OutlinedBorder? shape;
  final BorderSide? side;
  final EdgeInsetsGeometry? margin;
  final bool isLoading;
  final TextStyle? labelTextStyle;

  const EzRoundedButton({
    Key? key,
    this.child,
    this.label = 'Label',
    this.labelTextSize =  18.0,
    this.labelColor = EzAppColors.ezWhite,
    required this.onTap,
    this.btnColor = EzAppColors.ezPurple,
    this.btnHeight = 70.0,
    this.btnWidth = 377.0,
    this.elevation = 0,
    this.borderRadius = 25.0,
    this.isLoading = false,
    this.shape,
    this.side,
    this.margin,
    this.labelTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight.h,
      width: btnWidth.w,
      margin: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: btnColor,
          splashFactory: NoSplash.splashFactory,
          shape: shape ??
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    borderRadius.r,
                  ),
                  side: side ?? BorderSide.none),
        ),
        onPressed: () {
          HapticFeedback.lightImpact();
          onTap.call();
        },
        child: child ??
            (isLoading
                ? SpinKitThreeBounce(size: EzDimensions.ezFont20, color: EzAppColors.ezWhite)
                : Text(
                     label, style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: labelColor,
                      fontSize: labelTextSize,
                     ),
                  )),
      ),
    );
  }
}