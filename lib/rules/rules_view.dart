import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pillow/component/doodle_btn/btn_view.dart';
import 'package:pillow/component/string/text_value.dart';

import 'rules_logic.dart';

class RulesPage extends StatelessWidget {
  final logic = Get.put(RulesLogic());
  final state = Get.find<RulesLogic>().state;

  RulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/background.png',
              width: 1.sw,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 27.5.h,
              left: 10.w,
              child: DoodleBtnWidget(
                tag: '返回',
                onTapCallback: () {
                  Get.back();
                },
                facWidth: 0.245,
                facHeight: 0.07,
                isText: false,
              ),
            ),
            Positioned(
              top: 20.h,
              right: 110.w,
              child: DoodleBtnWidget(
                onTapCallback: () {},
                facWidth: 0.365,
                facHeight: 0.085,
                text: '使用說明',
                activation: false,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 0.1.sh,),
                ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 0.4.sh,
                    ),
                    child: Image.asset(
                      'assets/images/map.png',
                      width: 0.85.sw,
                      fit: BoxFit.contain,
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(0.1.sw, .0, 0.1.sw, 0.1.sw),
                  constraints: BoxConstraints(
                    maxHeight: 0.325.sh,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    color: const Color(0xb3af8337),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(12.0.r),
                      child: Text(
                          ruleText,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: const Color(0xffeaeaea),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 4.sp,
                              height: 1.5)),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
