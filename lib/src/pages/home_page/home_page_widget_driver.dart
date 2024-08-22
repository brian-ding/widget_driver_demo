import 'package:widget_driver/widget_driver.dart';

import '../../navigation/navigation.dart';
import '../../resolver/resolver.dart';
import '../../widget_driver/widget_driver.dart';
import '../second_page/second_page.dart';

class HomePageWidgetDriver extends SoWidgetDriver {
  late String _title = 'hello,';
  late ISoNavigator _navigator;

  HomePageWidgetDriver({required super.resolver});

  String get title => _title;

  onButtonPressed(BuildContext context) {
    final route = SecondPageRoute();
    _navigator.navigateTo(
      context,
      route,
    );

    _title = 'world!';
  }

  @override
  void didUpdateBuildContext(BuildContext context) {
    _navigator = resolver.resolve<ISoNavigator>(context);
  }
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
