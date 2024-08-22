import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SoResolver {
  T read<T>(BuildContext context) {
    final resolvedObject = context.read<T>();

    return resolvedObject;
  }

  // T readComponent<T>(BuildContext context) {
  //   final resolvedObject = context.readComponent<T>();

  //   return resolvedObject;
  // }

  T of<T>(BuildContext context) {
    final resolvedObject = Provider.of<T>(
      context,
      listen: false,
    );

    return resolvedObject;
  }
}
