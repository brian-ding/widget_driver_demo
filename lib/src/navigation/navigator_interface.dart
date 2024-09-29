import 'package:flutter/material.dart';

typedef OnBack<T> = Future<void> Function(T arugument);

abstract class ISoNavigator {
  Future<void> to<TResult>(
    BuildContext context,
    MaterialPageRoute route, {
    OnBack<TResult>? onBack,
  });

  back(
    BuildContext context,
  );

  showSnackbar(
    BuildContext context,
    SnackBar snackbar,
  );
}
