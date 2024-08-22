import 'package:flutter/material.dart';
import 'package:widget_driver/widget_driver.dart';

import '../resolver/resolver.dart';

abstract class SoWidgetDriver extends WidgetDriver {
  @protected
  final SoResolver resolver;

  SoWidgetDriver({
    required this.resolver,
  });
}
