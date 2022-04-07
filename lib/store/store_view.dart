import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pillow/component/doodle_btn/btn_view.dart';
import 'package:pillow/route_config.dart';

import 'store_logic.dart';

class StorePage extends StatelessWidget {
  final logic = Get.put(StoreLogic());
  final state = Get.find<StoreLogic>().state;

  StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/background.png',
            width: 1.sw,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 57.5.h,
            left: 10.w,
            child: DoodleBtnWidget(
              tag: '返回',
              onTapUpCallback: () {
                Get.back();
              },
              facWidth: 0.245,
              facHeight: 0.07,
              isText: false,
            ),
          ),
          Positioned(
            top: 50.h,
            child: DoodleBtnWidget(
              onTapUpCallback: () {
                Get.toNamed(RouteConfig.myCoupon);
              },
              facWidth: 0.376,
              facHeight: 0.085,
              text: '我的折價卷',
              activation: false,
            ),
          ),
        ],
      ),
    );
  }
}
