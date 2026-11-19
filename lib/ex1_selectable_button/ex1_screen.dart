import 'package:flutter/material.dart';

import 'widgets/selectable_button.dart';

class Ex1Screen extends StatelessWidget {
  const Ex1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Selectable Button')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableButton(),
            SizedBox(height: 40),
            SelectableButton(),
            SizedBox(height: 40),
            SelectableButton(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
