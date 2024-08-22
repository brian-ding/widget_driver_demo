import 'package:flutter_test/flutter_test.dart';
import 'package:widget_driver_demo/src/pages/home_page/home_page.dart';

void main() {
  group(
    'HomePageWidgetDriverProvider',
    () {
      test(
        'should build correct driver',
        () {
          // arrange
          final provider = HomePageWidgetDriverProvider();

          // act
          final driver = provider.buildDriver();

          // assert
          expect(
            driver,
            anything,
          );
        },
      );

      test(
        'should throw error when build test driver',
        () {
          // arrange
          final provider = HomePageWidgetDriverProvider();

          // act
          // assert
          expect(
            () => provider.buildTestDriver(),
            throwsUnimplementedError,
          );
        },
      );
    },
  );
}
