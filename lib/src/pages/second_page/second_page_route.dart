import 'package:flutter/material.dart';

import '../home_page/models/grid_item.dart';
import 'second_page_widget.dart';

class SecondPageRoute extends MaterialPageRoute {
  SecondPageRoute({
    required GridItem item,
  }) : super(
          builder: (context) => SecondPageWidget(
            item: item,
          ),
        );
}
