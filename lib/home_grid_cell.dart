import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/color_utils.dart';

class HomeGirdCell extends StatelessWidget {

  VoidCallback callback;

  String title;

  HomeGirdCell(this.title, this.callback, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        color: ColorUtils.getRandomColor(),
        child: Text(
            title,
            style: const TextStyle(
            fontSize: 17,
            color: Colors.black,
                decoration: TextDecoration.none
        ),
        ),
      ),
      onTap: callback,
    );
  }

}