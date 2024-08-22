import 'package:flutter/material.dart';

import 'navigation.dart';

class SoNavigator implements ISoNavigator {
  @override
  navigateTo(
    BuildContext context,
    MaterialPageRoute route,
  ) {
    Navigator.of(context).push(route);
  }

  @override
  navigateBack(
    BuildContext context,
  ) {
    Navigator.of(context).pop();
  }
}
