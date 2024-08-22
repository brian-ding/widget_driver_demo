import 'package:widget_driver/widget_driver.dart';

import '../../resolver/resolver.dart';
import '../../widget_driver/widget_driver.dart';

class HomePageWidgetDriver extends SoWidgetDriver {
  final String _title = 'hello, world!';
  HomePageWidgetDriver({required super.resolver});

  String get title => _title;

  onButtonPressed(BuildContext context) {}
}

class HomePageWidgetDriverProvider extends WidgetDriverProvider<HomePageWidgetDriver> {
  @override
  HomePageWidgetDriver buildDriver() {
    return HomePageWidgetDriver(
      resolver: SoResolver(),
    );
  }

  @override
  HomePageWidgetDriver buildTestDriver() {
    // TODO: implement buildTestDriver
    throw UnimplementedError();
  }
}
