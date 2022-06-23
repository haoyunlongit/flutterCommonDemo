import 'dart:io';
import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/container_widget.dart';
import 'package:flutter_demo/home_grid_cell.dart';
import 'package:flutter_demo/list_tile_exmple.dart';
import 'package:flutter_demo/row_layout.dart';
import 'package:flutter_demo/stack_layout.dart';
import 'package:flutter_demo/text_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'asyn_demo.dart';
import 'image_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: createAppBar(),
          body: Container(
            color: Colors.white,
            child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return _createWidget(index, context) ?? Container();
                  }),
            ),
          ),
        )
    );
  }

  Widget? _createWidget(int index, BuildContext context) {
     Widget? result;
     switch (index) {
       case 0: {
         result = HomeGirdCell("图片", () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) =>  ImageViewDemo()),
           );
         });
          break;
       }
       case 1: {
         result = HomeGirdCell("Text", () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => TextViewDemo()),
           );
         });
         break;
       }
       case 2: {
         result = HomeGirdCell("Container", () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) =>  ContainerWidget()),
           );
         });
         break;
       }
       case 3: {
         result = HomeGirdCell("stack 布局", () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) =>  StackWidget()),
           );
         });
         break;
       }
       case 4: {
         result = HomeGirdCell("Row/Column", () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) =>  RowColExample()),
           );
         });
         break;
       }
       case 5: {
         result = HomeGirdCell("手势与通知", () {
           Align(
             widthFactor: 2, //横轴缩放比例
             heightFactor: 2, //纵轴缩放比例
             alignment: Alignment.topCenter, //子视图在父视图的相对位置
             child: Container(

             ),
           );
         });
         break;
       }
       case 6: {
         result = HomeGirdCell("ListView", () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) =>  ListTileExample()),
           );
         });
         break;
       }
       case 7: {
         result = HomeGirdCell("ListViewBuilder", () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) =>  ListViewBuilderExample()),
           );
         });
         break;
       }
       case 8: {
         result = HomeGirdCell("异步", () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) =>  AsyncDemo()),
           );
         });
         break;
       }
       default: {

       }
     }
     return result;
  }


  PreferredSizeWidget createAppBar() {
    return AppBar(
      title:const Text("Material 3"),
      actions: [
        IconButton(
          icon: const Icon(Icons.wb_sunny_outlined),
          tooltip: "Toggle brightness", onPressed: () {  },
        ),
        IconButton(
          icon: const Icon(Icons.filter_3),
          onPressed: () {  },
          tooltip: "Switch to Material ${3}",
        ),
      ],
    );
  }

}

class TestNotification extends Notification {

}
