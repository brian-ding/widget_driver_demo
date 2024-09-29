import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_driver_demo/src/pages/second_page/second_page_widget.dart';

main() {
  group(
    'SecondPageWidget',
    () {
      testWidgets(
        'should render column',
        (widgetTester) async {
          // arrange
          final widget = SecondPageWidget();

          // act
          await widgetTester.pumpWidget(
            MaterialApp(
              home: widget,
            ),
          );

          // assert
          final column = find.byKey(
            const Key(
              'second-column',
            ),
          );
          expect(
            column,
            findsOneWidget,
          );
        },
      );
    },
  );
}
