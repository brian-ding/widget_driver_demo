import 'package:flutter/material.dart';
import 'package:widget_driver/widget_driver.dart';

import 'home_page.dart';

class HomePageWidget extends DrivableWidget<HomePageWidgetDriver> {
  HomePageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          driver.title,
        ),
        ElevatedButton(
          key: const Key('button-key'),
          onPressed: () => driver.onButtonPressed(
            context,
          ),
          child: const Text(
            'Press',
          ),
        ),
      ],
    );
  }

  @override
  WidgetDriverProvider<HomePageWidgetDriver> get driverProvider => HomePageWidgetDriverProvider();
}
