import 'dart:developer';

import 'package:flutter/material.dart';
import './button.dart';
import './double_button.dart';

class HexadColor extends StatefulWidget {
  const HexadColor({Key? key}) : super(key: key);

  @override
  State<HexadColor> createState() => _HexadColorState();
}

class _HexadColorState extends State<HexadColor> {
  String expression = '';
  int firstValue = 0;
  int secondValue = 0;
  late String operator;
  String result = '';
  void isOperator(String value) {
    if (expression.isNotEmpty) {
      firstValue = int.parse(expression);
      log('firstValue $firstValue');
      result = '';
    }
    setState(() {});
    if (value == '+' ||
        value == '-' ||
        value == '/' ||
        value == 'X' ||
        value == '%') {
      operator = value;
      expression = '';
      log(operator);
    }

    // expression += value;
  }

  void isClear(String value) {
    setState(() {});
    expression = '';
    result = '';
  }

  void isEqual(String value) {
    if (firstValue.toString().isEmpty) {
      result = 0.toString();
      expression = '';
    }

    if (secondValue.toString().isEmpty) {
      secondValue = 0;
      secondValue = int.parse(expression);
      log('second Number $secondValue');
    }
    secondValue = int.parse(expression);
    log('second Number $secondValue');

    setState(() {
      switch (operator) {
        case '+':
          result = (firstValue + secondValue).toString();
          // expression = '';
          firstValue = 0;
          secondValue = 0;
          break;
        case '-':
          result = (firstValue + secondValue).toString();
          // expression = '';
          firstValue = 0;
          secondValue = 0;
          break;
        case 'X':
          result = (firstValue * secondValue).toString();
          // expression = '';
          firstValue = 0;
          secondValue = 0;
          break;
        case '/':
          result = (firstValue / secondValue).toString();
          // expression = '';
          firstValue = 0;
          secondValue = 0;
          break;
        case '%':
          result = (firstValue % secondValue).toString();
          // expression = '';
          firstValue = 0;
          secondValue = 0;
          break;
        //so here it is in equal method and equal require two operand
        // case '+/-':
        //   result = (-firstValue).toString();
        //   log(result);
        // break;
        default:
          result = '';
          expression = expression;
      }
    });
  }

  void isValue(String value) {
    result = '';
    setState(() {});
    expression += value;
  }

  void changeValue(value) {
    setState(() {
      if (value == '+/-') {
        result = (-int.parse(expression)).toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Calculator'),
      // ),
      backgroundColor: Color(hexColor('#262829')),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10),
              constraints: const BoxConstraints.expand(
                  width: double.infinity, height: 200),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        expression,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Text(
                        result,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              constraints: const BoxConstraints.expand(
                width: double.infinity,
                height: double.infinity,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Button(
                            text: 'C',
                            bgColor: Colors.white,
                            onPressed: isClear),
                        Button(
                            text: '+/-',
                            bgColor: Colors.white,
                            onPressed: changeValue),
                        Button(
                            text: '%',
                            bgColor: Colors.white,
                            onPressed: isOperator),
                        Button(
                            text: 'X',
                            bgColor: Colors.white,
                            onPressed: isOperator),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Button(
                            text: '9',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '8',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '7',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '+',
                            bgColor: Colors.white,
                            onPressed: isOperator),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Button(
                            text: '6',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '5',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '4',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '-',
                            bgColor: Colors.white,
                            onPressed: isOperator),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Button(
                            text: '3',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '2',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '1',
                            bgColor: Colors.black45,
                            onPressed: isValue),
                        Button(
                            text: '/',
                            bgColor: Colors.white,
                            onPressed: isOperator),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DoubleButton(
                            text: '0',
                            bgColor: Colors.greenAccent,
                            onPressed: isValue),
                        Button(
                            text: '.',
                            bgColor: Colors.white,
                            onPressed: isValue),
                        Button(
                            text: '=',
                            bgColor: Colors.white,
                            onPressed: isEqual),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  int hexColor(String color) {
    String newColor = '0xff$color';
    newColor = newColor.replaceAll('#', '');
    int nColor = int.parse(newColor);
    return nColor;
  }
}
