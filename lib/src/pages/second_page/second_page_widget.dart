import 'package:flutter/material.dart';
import 'package:widget_driver/widget_driver.dart';
import 'package:widget_driver_demo/src/pages/second_page/second_page_widget_driver_provider.dart';

import 'second_page_widget_driver.dart';

class SecondPageWidget extends DrivableWidget<SecondPageWidgetDriver> {
  SecondPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Column(
        key: const Key('second-column'),
        children: [
          const Text(
            'this is the second page',
          ),
          ElevatedButton(
            key: const Key('button-key'),
            onPressed: () => driver.onButtonPressed(
              context,
            ),
            child: const Text(
              'Press',
            ),
          )
        ],
      ),
    );
  }

  @override
  WidgetDriverProvider<SecondPageWidgetDriver> get driverProvider => SecondPageWidgetDriverProvider();
}
