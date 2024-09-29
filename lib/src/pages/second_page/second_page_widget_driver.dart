import 'package:flutter/material.dart';

import '../../navigation/navigator_interface.dart';
import '../../widget_driver/widget_driver.dart';
import '../home_page/models/grid_item.dart';

class SecondPageWidgetDriver extends SoWidgetDriver {
  final GridItem _item;
  late ISoNavigator _navigator;

  GridItem get item => _item;

  SecondPageWidgetDriver({
    required GridItem item,
    required super.resolver,
  }) : _item = item;

  onButtonPressed(BuildContext context) {
    _navigator.back(context);
    final snackBar = SnackBar(content: Text('this is a SnackBar from ${item.title}'));
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
