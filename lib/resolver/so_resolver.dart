import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

sealed class SoResolver {
  T resolve<T>(BuildContext context) {
    final resolvedObject = context.read<T>();

    return resolvedObject;
  }
}
