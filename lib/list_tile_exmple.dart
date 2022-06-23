import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listTiles = <Widget>[
      const ListTile(
        title: Text('Tile 0: basic'),
      ),
      const Divider(),
      const ListTile(
        leading: Icon(
            Icons.face,
          size: 20,
          color: Colors.red,
        ),
        title: Text('Tile 1: with leading/trailing widgets'),
        trailing: Icon(Icons.tag_faces),
      ),
      const Divider(),
      const ListTile(
        title: Text('Tile 2 title'),
        subtitle: Text('subtitle of tile 2'),
      ),
      const Divider(),
      const ListTile(
        title: Text('Tile 3: 3 lines'),
        isThreeLine: true,
        subtitle: Text('subtitle of tile 3'),
      ),
      const Divider(),
      const ListTile(
        title: Text('Tile 4: dense'),
        dense: true,
      ),
      const Divider(),
      ListTile(
        title: const Text('Tile5: tile with badge'),
        subtitle: const Text('(This uses the badges package)'),
      ),
      const ListTile(
        title: Text('Tile 0: basic'),
      ),
      const Divider(),
      const ListTile(
        leading: Icon(Icons.face),
        title: Text('Tile 1: with leading/trailing widgets'),
        trailing: Icon(Icons.tag_faces),
      ),
      const Divider(),
      const ListTile(
        title: Text('Tile 2 title'),
        subtitle: Text('subtitle of tile 2'),
      ),
      const Divider(),
      const ListTile(
        title: Text('Tile 3: 3 lines'),
        isThreeLine: true,
        subtitle: Text('subtitle of tile 3'),
      ),
      const Divider(),
      const ListTile(
        title: Text('Tile 4: dense'),
        dense: true,
      ),
      const Divider(),
      ListTile(
        title: const Text('Tile5: tile with badge'),
        subtitle: const Text('(This uses the badges package)'),
      ),
    ];
    // Directly returning a list of widgets is not common practice.
    // People usually use ListView.builder, c.f. "ListView.builder" example.
    // Here we mainly demostrate ListTile.
    return Scaffold(
        appBar: AppBar(
        title: Text("ListView"),
    ),
    body:ListView(
        controller: ,
        children: listTiles));
  }
}

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const numItems = 20;
    const _biggerFont = TextStyle(fontSize: 18.0);

    Widget _buildRow(int idx) {
      return ListTile(
        leading: CircleAvatar(
          child: Text('$idx'),
        ),
        title: Text(
          'Item $idx',
          style: _biggerFont,
        ),
        trailing: const Icon(Icons.dashboard),
      );
    }

    // ScrollController controller = ScrollController();
    // controller.addListener(() {
    //   controller.offset;//滚动偏移量
    //
    // });
    // controller.jumpTo(0); //设置滚动视图滚动的位置
    // controller.animateTo(
    //     0,          //滚动到的位置
    //     duration: Duration(seconds: 2), //时间。
    //     curve: ElasticInCurve()
    // );  //动画的区率

    return Scaffold(
        appBar: AppBar(
          title: Text("ListViewBuilder"),
        ),
        body: ScrollNotificationObserver(
          child: ListView.builder(
            itemCount: numItems * 2,
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (BuildContext context, int i) {
              if (i.isOdd) return const Divider();
              final index = i ~/ 2 + 1;
              return _buildRow(index);
            },
          )),
        );
  }
}