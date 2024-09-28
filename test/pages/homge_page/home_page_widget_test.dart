import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:widget_driver/widget_driver.dart';
import 'package:widget_driver_demo/src/pages/home_page/home_page.dart';
import 'package:widget_driver_demo/src/pages/home_page/home_page_widget.dart';

import '../../mocks/home_page_widget_driver_mock.dart';
import '../../mocks/mocks.dart';

main() {
  group(
    'HomePageWidget',
    () {
      testWidgets(
        'should show title',
        (widgetTester) async {
          // arrange
          final driver = HomePageWidgetDriverMock();
          const expectedTitle = 'title123';
          when(
            () => driver.title,
          ).thenReturn(
            expectedTitle,
          );
          final widget = MockDriverProvider<HomePageWidgetDriver>(
            value: driver,
            child: MaterialApp(
              home: HomePageWidget(),
            ),
          );

          // act
          await widgetTester.pumpWidget(widget);

          // assert
          expect(
            find.text(expectedTitle),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'should navigate when press button',
        (widgetTester) async {
          // arrange
          final driver = HomePageWidgetDriverMock();
          when(
            () => driver.title,
          ).thenReturn(
            'expected',
          );
          final context = BuildContextMock();
          registerFallbackValue(context);
          final widget = MockDriverProvider<HomePageWidgetDriver>(
            value: driver,
            child: MaterialApp(
              home: HomePageWidget(),
            ),
          );
          await widgetTester.pumpWidget(widget);
          final button = find.byKey(const Key('button-key'));

          // act
          await widgetTester.tap(button);

          // assert
          await widgetTester.pump();
          verify(
            () => driver.onButtonPressed(any<BuildContext>()),
          ).called(
            1,
          );
        },
      );

      test(
        'should get correct driver provider',
        () {
          // arrange
          final widget = HomePageWidget();

          // act
          final provider = widget.driverProvider;

          // assert
          expect(
            provider,
            isA<HomePageWidgetDriverProvider>(),
          );
        },
      );
    },
  );
}
