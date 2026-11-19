import 'package:flutter/material.dart';

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelect = false;

  String get buttonText => isSelect ? 'Selected' : 'Not selected';
  Color get textColor => isSelect ? Colors.white : Colors.black;
  Color get backgroundColor => isSelect ? Colors.blue[500]! : Colors.blue[50]!;

  void onPress() {
    setState(() {
      isSelect = !isSelect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        child: Center(
          child: Text(buttonText, style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}
