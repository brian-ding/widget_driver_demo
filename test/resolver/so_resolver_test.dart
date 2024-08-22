import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:widget_driver_demo/src/resolver/resolver.dart';
import 'package:widget_driver_demo/src/resolver/so_resolver.dart';

class _ContainerWidget extends StatelessWidget {
  final void Function(BuildContext) buildCallback;

  _ContainerWidget({
    required this.buildCallback,
  });

  @override
  Widget build(BuildContext context) {
    buildCallback(context);

    return Container();
  }
}

main() {
  group(
    'SoResolver',
    () {
      testWidgets(
        'should return correct object when read',
        (widgetTester) async {
          // arrange
          final resolver = SoResolver();
          late String result = '';
          const expectedResult = 'expected';
          final widget = Provider<String>.value(
            value: expectedResult,
            child: _ContainerWidget(
              buildCallback: (c) {
                result = resolver.read<String>(c);
              },
            ),
          );

          // act
          await widgetTester.pumpWidget(widget);

          // assert
          expect(
            result,
            expectedResult,
          );
        },
      );

      testWidgets(
        'should return correct object when of',
        (widgetTester) async {
          // arrange
          final resolver = SoResolver();
          late String result = '';
          const expectedResult = 'expected';
          final widget = Provider<String>.value(
            value: expectedResult,
            child: _ContainerWidget(
              buildCallback: (c) {
                result = resolver.of<String>(c);
              },
            ),
          );

          // act
          await widgetTester.pumpWidget(widget);

          // assert
          expect(
            result,
            expectedResult,
          );
        },
      );
    },
  );
}
