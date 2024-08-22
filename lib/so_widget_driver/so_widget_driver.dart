import 'package:widget_driver/widget_driver.dart';
import 'package:widget_driver_demo/resolver/so_resolver.dart';

abstract class SoWidgetDriver extends WidgetDriver {
  final SoResolver resolver;

  SoWidgetDriver({
    required this.resolver,
  });
}
