import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'question_logic.dart';

class QuestionPage extends StatelessWidget {
  final logic = Get.put(QuestionLogic());
  final state = Get.find<QuestionLogic>().state;

  QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
