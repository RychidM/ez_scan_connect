import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NavBarState { home, profile }

class HomeState {
  late AnimationController navBarSwitcherController;

  late Animation<Offset> animationOffset;

  final Rx<NavBarState> _navBarState = NavBarState.home.obs;
  NavBarState get navBarState => _navBarState.value;
  set navBarState(NavBarState value) => _navBarState.value = value;
}
