import 'package:flutter_test/flutter_test.dart';
import 'package:widget_driver_demo/src/pages/second_page/second_page.dart';
import 'package:widget_driver_demo/src/pages/second_page/second_page_wdiget.dart';

import '../../mocks/mocks.dart';

main() {
  group(
    'SecondPageRoute',
    () {
      test(
        'should route to SecondPageWidget',
        () {
          // arrange
          final route = SecondPageRoute();
          final context = BuildContextMock();

          // act
          final widget = route.builder.call(context);

          // assert
          expect(
            widget,
            isA<SecondPageWidget>(),
          );
        },
      );
    },
  );
}
