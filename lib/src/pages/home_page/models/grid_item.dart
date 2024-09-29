import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:widget_driver_demo/src/interaction/clickable.dart';

import '../../../navigation/navigator_interface.dart';
import '../../second_page/second_page_route.dart';

class GridItem implements Clickable {
  final String title;
  final String description;

  GridItem({
    required this.title,
    required this.description,
  });

  @override
  void onClick(BuildContext context) {
    final navigator = context.read<ISoNavigator>();

    final route = SecondPageRoute(
      item: this,
    );
    navigator.to(
      context,
      route,
    );
  }
}
