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
        const Text(
          'this is the home page',
        ),
        ElevatedButton(
          onPressed: () {
            driver.onButtonPressed(
              context,
            );
          },
          child: const Text(
            'to second',
          ),
        ),
      ],
    );
  }

  @override
  WidgetDriverProvider<HomePageWidgetDriver> get driverProvider => HomePageWidgetDriverProvider();
}
