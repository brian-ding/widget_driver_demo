import 'package:flutter/material.dart';

import 'second_page_widget.dart';

class SecondPageRoute extends MaterialPageRoute {
  SecondPageRoute()
      : super(
          builder: (context) => const SecondPageWidget(),
        );
}
