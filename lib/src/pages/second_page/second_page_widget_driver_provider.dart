import 'package:widget_driver/widget_driver.dart';
import 'package:widget_driver_demo/src/resolver/resolver.dart';

import 'second_page_widget_driver.dart';

class SecondPageWidgetDriverProvider extends WidgetDriverProvider<SecondPageWidgetDriver> {
  @override
  SecondPageWidgetDriver buildDriver() {
    final resolver = SoResolver();
    final driver = SecondPageWidgetDriver(resolver: resolver);

    return driver;
  }

  @override
  SecondPageWidgetDriver buildTestDriver() {
    throw UnimplementedError();
  }
}
