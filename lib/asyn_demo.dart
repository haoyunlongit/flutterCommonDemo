import 'dart:io';
import 'dart:isolate';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'network_utils.dart';


class AsyncDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
     return Scaffold(
       appBar: AppBar(
         title: Text("异步"),
       ),
       body: Container(
         width: size.width,
         color: Colors.white,
         child: Column (
           children: [
             SizedBox(height: 200),
             TextButton(onPressed: () {
               doMain2();
             }, child: Text(
                 "异步操作"
             )),
             SizedBox(height: 50),
             TextButton(onPressed: () {
               doMain();
             }, child: Text(
                 "开启线程执行"
             )),
             SizedBox(height: 50),
             TextButton(onPressed: () {
               Future.microtask(() => {
                  // do some thing
               });
             }, child: Text(
                 "往微消息队列中插入任务"
             )),
             SizedBox(height: 50),
             TextButton(onPressed: () {
               compute(calc, 100);
             }, child: Text(
                 "compuees"
             )),
           ],
         ),
       ),
     );
  }

  // 模拟主线程调用
  doMain()  {
    try {
      print("~~~login task begin}");
      Isolate.spawn(calc, 10000);
      print("~~~login task after~~~}");
    } catch (e) {
      print(e);
    }
  }


  // 假设会有一个非常消耗资源的计算 这里在另一个线程里执行的
  void calc(count){
    var total = 0;
    for(var i = 0; i < count ; i++){
      for(var j = 0; j < count ; j++){
        total += 1;
      }
    }
    print(total);
  }


  Future<String>requestLogin(String userName, String pwd) async {
    print("~~~begin do request}");
    String result = await NetworkUtils.fetchData("trpc.bbg.bbg_page_main.BbgPageMain/GetPage",
        {"page_params":{ "page_id":"10000"},"page_context":{"page_ctx":"0","page_size":"4"}});
    print("~~~end do request}");
    return result;
  }

  // 模拟主线程调用
  doMain2()  {
    try {
      print("~~~login task begin}");
      Future<String> logId = requestLogin("userName", "pwd");
      logId.then((value) {
        print("~~~login finish = $value");
        return value;
      });
      print("~~~login task after~~~}");
    } catch (e) {
      print(e);
    }
  }

}