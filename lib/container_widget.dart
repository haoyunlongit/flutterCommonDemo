import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_utils.dart';

class ContainerWidget extends StatelessWidget {

  var string1 = "String1";
  String string2 = "String2";
  int number1 = 1;
  double number2 = 2.0;
  bool boolValue = true;
  Object number3 = 1.0;
  dynamic number4 = 1.0;

  Container childView = Container(
    width:  200,
    height: 40,
    color: ColorUtils.getRandomColor(),
    alignment: Alignment.center,
    child: const Text(
        "测试Widget特性"
    ),
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List childrenView = [
      childView,
      childView,
      childView,
      childView,
      childView,
    ];
    print(" ${childrenView}");
    return Scaffold(
      appBar: AppBar(
        title: Text("container"),
      ),
      body: Container(
        width: size.width,
        color: Colors.white,
        child: Column (
          children: [
            SizedBox(height: 200),
            ...childrenView,
            // SizedBox(height: 50),

            //圆角，背景图，边框，背景色
            Container(
              width: 100,
              height: 100,

              decoration: BoxDecoration(//container 背景颜色
                  borderRadius: BorderRadius.all(Radius.circular(25)), //圆角
                  border: Border.all(
                    color: const Color(0xCCffffff),
                    width: 2,
                  ),
                  image: DecorationImage(
                      image: Image.asset("images/test1.jpg").image),
              ),
            ),
            SizedBox(height: 20),

            //渐变效果
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Color(0x002A3036), Color(0x772A3036), Color(0xFF2A3036)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 模拟主线程调

}