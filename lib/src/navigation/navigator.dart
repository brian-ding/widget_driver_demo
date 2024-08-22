import 'package:flutter/material.dart';
import 'package:widget_driver_demo/src/resolver/resolver.dart';

import 'navigation.dart';

class SoNavigator implements ISoNavigator {
  final SoResolver _resolver;
  SoNavigator({
    required SoResolver resolver,
  }) : _resolver = resolver;

  @override
  to(
    BuildContext context,
    MaterialPageRoute route,
  ) {
    final navigator = _resolver.read<NavigatorState>(context);
    navigator.push(route);
  }

  @override
  back(
    BuildContext context,
  ) {
    final navigator = _resolver.read<NavigatorState>(context);
    navigator.pop();
  }
}
