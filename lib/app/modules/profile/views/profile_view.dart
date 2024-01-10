import 'package:ez_scan_connect/app/data/constants/app_dimensions.dart';
import 'package:ez_scan_connect/app/modules/profile/bindings/profile_binding.dart';
import 'package:ez_scan_connect/app/modules/profile/views/widgets/profile_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ProfileBinding binding = ProfileBinding();
    binding.dependencies();
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: EzDimensions.ezFont33,
              ),
        ),
      ),
      body: const ProfileBody(),
    );
  }
}
