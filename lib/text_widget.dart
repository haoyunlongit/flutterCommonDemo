import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Text"),
    ),body: Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextContainerWidget(const Text(
            "我的文字测试阿刚发送到发",  //必选参数
            maxLines: 1,  //最大行数
            overflow: TextOverflow.ellipsis, //超出文本结尾方式
            textAlign: TextAlign.center, //文字换行对齐方式，
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                wordSpacing: 1.0,
                letterSpacing: 1.0
            ),
          )),
            TextContainerWidget(const Text(
              "fa",  //必选参数
              maxLines: 1,  //最大行数
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center, //文字换行对齐方式，
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1.0,
                  letterSpacing: 1.0
              ),
            ),
            ),
            TextContainerWidget(Text("Hello world",
              style: TextStyle(
                  color: Colors.blue,  //字体色
                  fontSize: 18.0, //字体大小
                  height: 1.2,  //行高
                  fontFamily: "Courier",  //字体
                  wordSpacing: 10,  //单词间距离
                  letterSpacing: 20, //字母间距
                  background: Paint()..color=Colors.yellow, //文本背景色
                  decoration: TextDecoration.underline, //下划线
                  decorationStyle: TextDecorationStyle.dashed  //下划线央视
              ),
            )),
            SizedBox(height: 50),
            Text.rich(TextSpan(
                children: [
                  const TextSpan(
                      text: "Home: "
                  ),
                  TextSpan(
                      text: "https://flutterchina.club",
                      style: const TextStyle(
                          color: Colors.blue
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {

                      }
                  ),
                ]
            ))
          ],
        ),
      ),
    ));

  }

}

class TextContainerWidget extends StatelessWidget {

  Text text;

  TextContainerWidget(this.text);

  @override
  Widget build(BuildContext context) {
     return Container(
       width: 300,
       height: 50,
       padding: const EdgeInsets.only(left: 20, right: 20),
       margin:  const EdgeInsets.only(top: 10, bottom: 10),
       alignment: Alignment.center,  //子视图在Container的位置
       decoration: const BoxDecoration(
           color: Colors.blue,        //container 背景颜色
           borderRadius: BorderRadius.all(Radius.circular(25)), //圆角

       ),
       child: text
     );
  }

}