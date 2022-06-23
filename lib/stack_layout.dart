import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {

  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
         title: Text("StackWidget"),
    ),
       body: Container(
         color: Colors.amber,
         child: Stack(
           children: [
           Align(
           widthFactor: 1, //横轴缩放比例
           heightFactor: 1, //纵轴缩放比例
           alignment: Alignment.topCenter, //子视图在父视图的相对位置
           child: Container(
          width: 100,

           ),
         ),
           Positioned(
                 left: 0,
                 top: 0,
                 child: Container(
                   height: 50,
                   width: 50,
                   color: Colors.red,
                 )),
             Positioned(
                 right: 0,
                 top: 0,
                 child: Container(
                   height: 50,
                   width: 50,
                   color: Colors.blue,
                 ))
           ],
         ),
       ),
     );
  }

}