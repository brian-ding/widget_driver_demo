// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:widget_driver_demo/src/pages/home_page/home_page.dart';
import 'package:widget_driver_demo/src/navigation/navigation.dart';
import 'package:widget_driver_demo/src/pages/home_page/home_page_widget.dart';
import 'package:widget_driver_demo/src/pages/second_page/second_page_route.dart';

import '../../mocks/mocks.dart';
import '../../mocks/so_navigator_mock.dart';

void main() {
  group(
    'HomePageWidgetDriver',
    () {
      test(
        'should navigate to second page',
        () {
          // arrange
          registerFallbackValue(SecondPageRoute());
          final context = BuildContextMock();
          final navigator = SoNavigatorMock();
          final resolver = SoResolverMock();
          when(
            () => resolver.read<ISoNavigator>(context),
          ).thenReturn(
            navigator,
          );
          final driver = HomePageWidgetDriver(resolver: resolver);
          driver.didUpdateBuildContext(context);

          // act
          driver.onButtonPressed(context);

          // assert
          verify(
            () => navigator.to(
              context,
              any<SecondPageRoute>(),
            ),
          ).called(
            1,
          );
        },
      );

      test(
        'should update title when navigate',
        () {
          // arrange
          final context = BuildContextMock();
          final navigator = SoNavigatorMock();
          final resolver = SoResolverMock();
          when(
            () => resolver.read<ISoNavigator>(context),
          ).thenReturn(
            navigator,
          );
          final driver = HomePageWidgetDriver(resolver: resolver);
          driver.didUpdateBuildContext(context);

          // act
          driver.onButtonPressed(context);

          // assert
          expect(
            driver.title,
            'world!',
          );
        },
      );

      test(
        'should show default title',
        () {
          // arrange
          final resolver = SoResolverMock();
          final driver = HomePageWidgetDriver(resolver: resolver);

          // act
          final title = driver.title;

          // assert
          expect(
            title,
            'hello,',
          );
        },
      );
    },
  );
}
