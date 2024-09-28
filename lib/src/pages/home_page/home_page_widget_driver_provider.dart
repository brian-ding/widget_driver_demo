import 'package:widget_driver/widget_driver.dart';

import '../../resolver/resolver.dart';
import 'home_page.dart';

class HomePageWidgetDriverProvider extends WidgetDriverProvider<HomePageWidgetDriver> {
  @override
  HomePageWidgetDriver buildDriver() {
    return HomePageWidgetDriver(
      resolver: SoResolver(),
    );
  }

  @override
  HomePageWidgetDriver buildTestDriver() {
    throw UnimplementedError();
  }
}
