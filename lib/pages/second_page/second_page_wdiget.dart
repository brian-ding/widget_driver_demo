import 'package:flutter/material.dart';

class SecondPageWidget extends StatelessWidget {
  const SecondPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'this is the second page',
        ),
        ElevatedButton(
          onPressed: () => onPressed(
            context,
          ),
          child: const Text('Enabled'),
        ),
      ],
    );
  }

  void onPressed(BuildContext context) {
    final navigator = Navigator.of(
      context,
    );

    navigator.pop();
  }
}
