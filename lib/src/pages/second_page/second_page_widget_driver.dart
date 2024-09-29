import 'package:flutter/material.dart';

import '../../navigation/navigator_interface.dart';
import '../../widget_driver/widget_driver.dart';

class SecondPageWidgetDriver extends SoWidgetDriver {
  late ISoNavigator _navigator;

  SecondPageWidgetDriver({
    required super.resolver,
  });

  onButtonPressed(BuildContext context) {
    _navigator.back(context);
    const snackBar = SnackBar(content: Text('this is a SnackBar'));
    _navigator.showSnackbar(
      context,
      snackBar,
    );
  }

  @override
  void didUpdateBuildContext(BuildContext context) {
    _navigator = resolver.read<ISoNavigator>(context);
  }
}
