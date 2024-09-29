import 'package:flutter/material.dart';
import 'package:widget_driver_demo/src/resolver/resolver.dart';

import 'navigation.dart';

class SoNavigator implements ISoNavigator {
  final SoResolver _resolver;
  SoNavigator({
    required SoResolver resolver,
  }) : _resolver = resolver;

  // @override
  // to<T>(
  //   BuildContext context,
  //   MaterialPageRoute route,
  // ) {
  //   final navigator = _resolver.readNavigator(context);
  //   navigator.push(route);
  // }

  @override
  Future<void> to<TResult>(
    BuildContext context,
    MaterialPageRoute route, {
    OnBack<TResult>? onBack,
  }) async {
    final navigator = _resolver.readNavigator(context);
    final argument = await navigator.push(route);
    if (onBack != null) {
      await onBack(argument);
    }
  }

  @override
  back(
    BuildContext context,
  ) {
    final navigator = _resolver.readNavigator(context);
    navigator.pop();
  }

  @override
  showSnackbar(
    BuildContext context,
    SnackBar snackbar,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
