import 'package:flutter/material.dart';

class SecondPageWidget extends StatelessWidget {
  const SecondPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      key: Key('second-column'),
      children: [
        Text(
          'this is the second page',
        )
      ],
    );
  }
}
