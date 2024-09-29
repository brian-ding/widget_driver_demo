import 'package:flutter/material.dart';
import 'package:widget_driver/widget_driver.dart';

import 'home_page.dart';

class HomePageWidget extends DrivableWidget<HomePageWidgetDriver> {
  HomePageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: driver.items.map((e) {
          return SizedBox(
            width: 100,
            height: 100,
            child: GestureDetector(
              onTap: () => e.onClick(context),
              child: Column(
                children: [
                  Text(
                    e.title,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(e.description),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  WidgetDriverProvider<HomePageWidgetDriver> get driverProvider => HomePageWidgetDriverProvider();
}
