import 'package:flutter/material.dart';

abstract class ISoNavigator {
  navigateTo(
    BuildContext context,
    MaterialPageRoute route,
  );

  navigateBack(
    BuildContext context,
  );
}
