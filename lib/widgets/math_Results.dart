import 'package:calculator/controller/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'sub_Result.dart';
import 'main_Result.dart';




class MathResults extends StatelessWidget {
  MathResults({Key? key}) : super(key: key);

  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(

        children: [

          SubResult(text: '${calculatorCtrl.firstNumber}${calculatorCtrl.operator}${calculatorCtrl.secondNumber}'),

          MainResultText(text: '${calculatorCtrl.mathResult}'),
        ],
      ),
    );
  }
}