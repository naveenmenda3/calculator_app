import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator/widgets/cal_button.dart';
import 'package:calculator/controller/calculator_controller.dart';
import 'package:calculator/widgets/math_Results.dart';



class CalculatorScreen extends StatelessWidget {
  final calculatorCtrl = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                MathResults(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: 'AC',
                      bgColor: Color(0xff333333),
                      onPressed: () => calculatorCtrl.resetAll(),
                    ),
                    CalculatorButton(
                      text: '%',
                      bgColor: Color(0xff333333),
                      onPressed: () => calculatorCtrl.selectOperation('%'),
                    ),
                    CalculatorButton(
                      text: 'del',
                      bgColor: Color(0xff333333),
                      onPressed: () => calculatorCtrl.deletedLastEntry(),
                    ),
                    CalculatorButton(
                      text: '/',
                      bgColor: Color(0xff333333),
                      onPressed: () => calculatorCtrl.selectOperation('/'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: '7',
                      onPressed: () => calculatorCtrl.addNumber('7'),
                    ),
                    CalculatorButton(
                      text: '8',
                      onPressed: () => calculatorCtrl.addNumber('8'),
                    ),
                    CalculatorButton(
                      text: '9',
                      onPressed: () => calculatorCtrl.addNumber('9'),
                    ),
                    CalculatorButton(
                      text: 'x',
                      bgColor: Color(0xff333333),
                      onPressed: () => calculatorCtrl.selectOperation('x'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: '4',
                      onPressed: () => calculatorCtrl.addNumber('4'),
                    ),
                    CalculatorButton(
                      text: '5',
                      onPressed: () => calculatorCtrl.addNumber('5'),
                    ),
                    CalculatorButton(
                      text: '6',
                      onPressed: () => calculatorCtrl.addNumber('6'),
                    ),
                    CalculatorButton(
                      text: '-',
                      bgColor: Color(0xff333333),
                      onPressed: () => calculatorCtrl.selectOperation('-'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: '1',
                      onPressed: () => calculatorCtrl.addNumber('1'),
                    ),
                    CalculatorButton(
                      text: '2',
                      onPressed: () => calculatorCtrl.addNumber('2'),
                    ),
                    CalculatorButton(
                      text: '3',
                      onPressed: () => calculatorCtrl.addNumber('3'),
                    ),
                    CalculatorButton(
                      text: '+',
                      bgColor: Color(0xff333333),
                      onPressed: () => calculatorCtrl.selectOperation('+'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalculatorButton(
                      text: '00',
                      big: true,
                      onPressed: () => calculatorCtrl.addNumber('00'),
                    ),
                    CalculatorButton(
                      text: '0',
                      big: true,
                      onPressed: () => calculatorCtrl.addNumber('0'),
                    ),
                    CalculatorButton(
                      text: '.',
                      onPressed: () => calculatorCtrl.addDecimalPoint(),
                    ),
                    CalculatorButton(
                      text: '=',
                      bgColor: Color(0xff333333),
                      onPressed: () => calculatorCtrl.calculateResult(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}