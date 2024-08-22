import 'package:widget_driver/widget_driver.dart';

import '../../navigation/navigation.dart';
import '../../widget_driver/widget_driver.dart';
import '../second_page/second_page.dart';

class HomePageWidgetDriver extends SoWidgetDriver {
  late String _title = 'hello,';
  late ISoNavigator _navigator;

  HomePageWidgetDriver({
    required super.resolver,
  });

  String get title => _title;

  onButtonPressed(BuildContext context) {
    final route = SecondPageRoute();
    _navigator.to(
      context,
      route,
    );

    _title = 'world!';
    notifyWidget();
  }

  @override
  void didUpdateBuildContext(BuildContext context) {
    _navigator = resolver.read<ISoNavigator>(context);
  }
}
