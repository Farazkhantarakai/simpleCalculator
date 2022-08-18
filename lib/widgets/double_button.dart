import 'package:flutter/material.dart';

class DoubleButton extends StatelessWidget {
  const DoubleButton(
      {Key? key,
      required this.text,
      required this.bgColor,
      required this.onPressed})
      : super(key: key);

  final String text;
  final Color bgColor;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(text),
      child: Container(
          decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(1))),
          constraints: const BoxConstraints.expand(width: 150, height: 60),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: bgColor == Colors.black45 ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ))),
    );
  }
}
