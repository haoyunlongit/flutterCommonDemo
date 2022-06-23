import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("图片")),
        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                "images/test1.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.network(
                "https://vfiles.gtimg.cn/wupload/bbg_business.t_bbg_focus/20220614_5kn1wrj3t1dg954goailfn3xr39d2n34.png",
                height: 100,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              CachedNetworkImage(
                placeholder:(context, url) => Image.asset("images/bg_recommend_game_item.png"),
                errorWidget: (context, url, error) => Image.asset("images/bg_recommend_game_item.png"),
                imageUrl: "https://vfiles.gtimg.cn/wupload/bbg_business.t_bbg_focus/20220614_5kn1wrj3t1dg954goailfn3xr39d2n34.png",
                height: 100,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              CachedNetworkImage(
                errorWidget: (context, url, error) => Image.asset("images/bg_recommend_game_item.png"),
                imageUrl: "https://vfiles.gtimg.cn/wupload/bbg_business.t_bbg_focus/20220614_5kn1wrj3t1dg954goailfn3xr39d2n34.png",
                imageBuilder: (context, imageProvider) {
                  return CircleAvatar(
                    backgroundImage: imageProvider,
                    radius: 50,
                  );
                },
              )
            ],
          ),
        )
    );
  }

}