import 'package:flutter/material.dart';

abstract class ISoNavigator {
  to(
    BuildContext context,
    MaterialPageRoute route,
  );

  back(
    BuildContext context,
  );
}
