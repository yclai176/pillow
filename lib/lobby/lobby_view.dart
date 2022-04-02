import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lobby_logic.dart';

class LobbyPage extends StatelessWidget {
  final logic = Get.put(LobbyLogic());
  final state = Get.find<LobbyLogic>().state;

  LobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
