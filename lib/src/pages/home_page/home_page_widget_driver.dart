import 'package:widget_driver_demo/src/pages/home_page/models/grid_item.dart';

import '../../widget_driver/widget_driver.dart';

class HomePageWidgetDriver extends SoWidgetDriver {
  final String _title = 'hello,';
  final Iterable<GridItem> _items;

  Iterable<GridItem> get items => _items;

  HomePageWidgetDriver({
    required super.resolver,
  }) : _items = Iterable.generate(
          100,
          (i) => GridItem(
            title: 'title$i',
            description: 'description$i',
          ),
        );

  String get title => _title;
}
