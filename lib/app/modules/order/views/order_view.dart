import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/modules/order/bindings/order_binding.dart';
import 'package:ez_scan_connect/app/modules/order/views/widgets/empty_order_view.dart';
import 'package:ez_scan_connect/app/modules/order/views/widgets/order_app_bar.dart';
import 'package:ez_scan_connect/app/modules/order/views/widgets/order_lists_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    OrderBinding binding = OrderBinding();
    binding.dependencies();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(EzDimensions.ezSpacing30.h),
          const OrderPageAppBar(),
          Gap(EzDimensions.ezSpacing10.h),

          // const EmptyOrdersView(),
          const OrdersListsView(),
        ],
      ),
    );
  }
}
