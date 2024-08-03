import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/data/constants/theme/controllers/ez_theme_controller.dart';
import 'package:ez_scan_connect/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

class EmptyOrdersView extends StatelessWidget {
  const EmptyOrdersView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: EzDimensions.ezDimens130.h),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<EzThemeService>(
              init: EzThemeService(),
              initState: (_) {},
              builder: (themeService) {
                return SvgPicture.asset(
                  Assets.iconsDishIcon,
                  colorFilter: ColorFilter.mode(
                    themeService.ezThemeState.isDarkMode
                        ? EzAppColors.ezWhite
                        : EzAppColors.ezBlack,
                    BlendMode.srcIn,
                  ),
                );
              },
            ),
            Gap(EzDimensions.ezSpacing25.h),
            Text(
              'No Orders.',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: EzDimensions.ezFont20,
                  ),
            ),
            Text(
              'You currently do not have any orders available.',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: EzDimensions.ezFont15,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
