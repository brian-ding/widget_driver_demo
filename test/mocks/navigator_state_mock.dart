import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';

class NavigatorStateMock extends Mock implements NavigatorState {
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '';
  }
}
