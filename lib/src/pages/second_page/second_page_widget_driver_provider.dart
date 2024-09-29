import 'package:widget_driver/widget_driver.dart';
import 'package:widget_driver_demo/src/resolver/resolver.dart';

import '../home_page/models/grid_item.dart';
import 'second_page_widget_driver.dart';

class SecondPageWidgetDriverProvider extends WidgetDriverProvider<SecondPageWidgetDriver> {
  final GridItem item;

  SecondPageWidgetDriverProvider({
    required this.item,
  });

  @override
  SecondPageWidgetDriver buildDriver() {
    final resolver = SoResolver();
    final driver = SecondPageWidgetDriver(
      resolver: resolver,
      item: item,
    );

    return driver;
  }

  @override
  SecondPageWidgetDriver buildTestDriver() {
    throw UnimplementedError();
  }
}
