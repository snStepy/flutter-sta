import 'package:flutter/material.dart';
import 'model/post.dart';

// 学习 demo1

// void main() {
//   runApp(
//     Center(
//       child: Text(
//         'hello',
//         textDirection: TextDirection.ltr,
//       ),
//     )
//   );
// }

// 定义自己的小部件

// StatefulWidget  有需要修改的小部件需要继承这个 StatefulWidget
// StatelessWidget 没有需要修改的小部件需要继承这个StatelessWidget

// class App extends StatelessWidget {
//   @override // 指的是方法覆盖的 父类里面的 build这个方法（具体需要查下）
//     // Widget 指的就是方法返回值得类型 context 返回的参数
//     Widget build(BuildContext context) { // 这个方法返回一个widget
//       // : implement build
//       return null;
//     }
// }

// 学习 demo2

// void main() { // 这里可以使用箭头函数的形式 如下所示
//   runApp(new App);
// }
// void main() => runApp(App());

// class App extends StatelessWidget {
//   // 指的是方法覆盖的 父类里面的 build这个方法（具体需要查下）
//   @override
//   // Widget 指的就是方法返回值得类型 context 返回的参数
//   Widget build(BuildContext context) {
//     // 这个方法返回一个widget
//     // implement build
//     return Center(
//       child: Text(
//         'hello',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(
//           fontSize: 40.0,
//           fontWeight: FontWeight.bold,
//           color: Colors.yellow,
//         ),
//       ),
//     );
//   }
// }

//demo 4

void main() => runApp(new App());

class App extends StatelessWidget {
  // 指的是方法覆盖的 父类里面的 build这个方法（具体需要查下）
  @override
  // Widget 指的就是方法返回值得类型 context 返回的参数
  Widget build(BuildContext context) {
    // 这个方法返回一个widget
    // implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData( 
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style:Theme.of(context).textTheme.title
          ),
          Text(
            posts[index].author,
            style:Theme.of(context).textTheme.subhead
          ),
          SizedBox(height: 16.0),

        ],
      ),
    );
  }
  @override
    Widget build(BuildContext context) {
      //  implement build
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("lewis"),
          elevation: 30.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ),
      );
    }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implement build
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
// 官方文档demo

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext contex) {
//     return new MaterialApp(
//       title: 'welcome to flutter',
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text("welcome to flutter"),
//         ),
//         body: new Center(
//           child: new Text('Hell world'),
//         ),
//       ),
//     );
//   }
// }
