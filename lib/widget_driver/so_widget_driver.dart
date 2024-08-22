import 'package:widget_driver/widget_driver.dart';

import '../resolver/resolver.dart';

abstract class SoWidgetDriver extends WidgetDriver {
  final SoResolver resolver;

  SoWidgetDriver({
    required this.resolver,
  });
}
