import 'dart:ui';

import 'package:flutter/material.dart';

/// 마우스로 드래기 하기 위한 class
class CustomScrollBehavior extends MaterialScrollBehavior {

  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.mouse,
    PointerDeviceKind.touch
  };
}