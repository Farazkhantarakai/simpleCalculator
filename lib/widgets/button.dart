import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
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
    return InkWell(
      onTap: () => onPressed(text),
      child: Container(
          decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
          constraints: const BoxConstraints.expand(width: 70, height: 70),
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
