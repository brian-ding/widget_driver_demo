import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:widget_driver_demo/src/navigation/navigation.dart';

import '../mocks/mocks.dart';
import '../mocks/navigator_state_mock.dart';

main() {
  group(
    'SoNavigator',
    () {
      test(
        'should call push when navigate to',
        () {
          // arrange
          final context = BuildContextMock();
          final route = MaterialPageRoute(
            builder: (c) => Container(),
          );
          final navigatorState = NavigatorStateMock();
          when(
            () => navigatorState.push(route),
          ).thenAnswer(
            (_) => Future.value(''),
          );
          final resolver = SoResolverMock();
          when(
            () => resolver.read<NavigatorState>(context),
          ).thenReturn(
            navigatorState,
          );

          final navigator = SoNavigator(resolver: resolver);

          // act
          navigator.to(
            context,
            route,
          );

          // assert
          verify(
            () => navigatorState.push(route),
          ).called(
            1,
          );
        },
      );

      test(
        'should call pop when navigate back',
        () {
          // arrange
          final context = BuildContextMock();
          final navigatorState = NavigatorStateMock();
          final resolver = SoResolverMock();
          when(
            () => resolver.read<NavigatorState>(context),
          ).thenReturn(
            navigatorState,
          );

          final navigator = SoNavigator(resolver: resolver);

          // act
          navigator.back(
            context,
          );

          // assert
          verify(
            () => navigatorState.pop(),
          ).called(
            1,
          );
        },
      );
    },
  );
}
