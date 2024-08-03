import 'package:ez_scan_connect/app/data/constants/app_colors.dart';
import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/modules/profile/views/widgets/money_inflow_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EzInflowCustomPaint extends StatelessWidget {
  const EzInflowCustomPaint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(397.w, (397 * 0.4986737400530504).toDouble()),
      painter: MoneyInflowCard(),
      child: Container(
        width: double.maxFinite,
        height: (397.w * 0.4986737400530504).toDouble(),
        padding: EdgeInsets.symmetric(
            vertical: EzDimensions.ezSpacing30.h,
            horizontal: EzDimensions.ezSpacing25.w),
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Money Inflow",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: EzAppColors.ezWhite,
                        fontSize: EzDimensions.ezFont15,
                      ),
                ),
                Text(
                  "Today",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: EzAppColors.ezWhite,
                        fontSize: EzDimensions.ezFont15,
                      ),
                ),
              ],
            ),
            Gap(EzDimensions.ezSpacing10.h),
            Divider(
              color: EzAppColors.ezWhite.withOpacity(0.33),
            ),
            Gap(EzDimensions.ezSpacing25.h),
            Text(
              "Money Inflow",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: EzAppColors.ezWhite,
                    fontSize: EzDimensions.ezFont15,
                  ),
            ),
            Text(
              "GHS 37,769.98",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: EzDimensions.ezFont30),
            )
          ],
        ),
      ),
    );
  }
}
