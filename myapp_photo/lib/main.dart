import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{ // 改写静态ui
  var stack = new Stack(
    alignment: const FractionalOffset(0.5, 0.5),
    children: <Widget>[
      new CircleAvatar( //背景图
           backgroundImage: new NetworkImage('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg'),          
           radius: 100.0,
      ), 
      // Image.asset('./image/ddaaa.jpeg'),
      // new Positioned(
      //   top:40.0,
      //   left: 20.0,
      //   child: Text('哈哈哈'),
      // ),
      //  new Positioned(
      //   top:10.0,
      //   left: 10.0,
      //   child: Text('嘿嘿'),
      // ),
      // new Positioned(
      //   top:10.0,
      //   left: 60.0,
      //   child: new Text('33333')
      // )  
      new Container(
         alignment: Alignment.centerLeft,
        width: 120,
        height: 40,
         decoration: BoxDecoration(
           color: Colors.red,
         ),
         child: new Text('你是谁呀',style: TextStyle(fontSize: 30),),
      ),
    ],
  ); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'photo页',
      home: Scaffold(
        appBar: AppBar(
          title: new Text('照片墙'),
        ),
        body: stack,
        // body: GridView.count( // 官方推荐写法
        //   padding: const EdgeInsets.all(5.0),
        //   crossAxisSpacing: 5.0,   // 网格左右间距
        //   mainAxisSpacing: 5.0,   // 上下间距
        //   crossAxisCount: 3, // 一行放三张
        //   children: <Widget>[
        //      new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),
        //      new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),
        //      new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),
        //      new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),
        //      new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),
        //   ],
        // ),
        // body: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     mainAxisSpacing: 3, // 左右的间距 
        //     crossAxisSpacing: 2.0, // 上下的间距
        //     crossAxisCount: 3, //一列放几个
        //     childAspectRatio: 0.7, // 图片宽高比
        //   ),
        //   children: <Widget>[
        //      new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),
        //      new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),
        //     new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),
        //      new Image.network('http://img.redocn.com/sheji/20141219/zhongguofengdaodeliyizhanbanzhijing_3744115.jpg',fit: BoxFit.fill),

        //   ],
        // ),
        // body: new Row(
        //   children: <Widget>[
        //       new RaisedButton(
        //       onPressed: (){},
        //       color: Colors.blue,
        //       child: new Text('我是1',style: TextStyle(
        //         color: Colors.white
        //       )), 
        //     ),  
        //     Expanded(child: new RaisedButton(
        //       onPressed: (){},
        //       color: Colors.black,
        //       child: new Text('我是2',style: TextStyle(
        //         color: Colors.white
        //       )), 
        //     ),),
        //     Expanded(child: 
        //     new RaisedButton(
        //       onPressed: (){},
        //       color: Colors.red,
        //       child: new Text('我是3',style: TextStyle(
        //         color: Colors.white
        //       )), 
        //     ),), 
        //     // new Text('22222',style: TextStyle(fontSize: 30.0)),
        //     // new Text('fffff'),
        //     // new Text('hhhhh')
        //   ],
        // )
        // body: Column(
        //   // crossAxisAlignment: CrossAxisAlignment.end,
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: <Widget>[
        //     new Text('1111'),
        //     new Text('2222'),
        //     new Text('3333333333'),
        //     new Text('4444'),
        //     new Text('5555'),
        //    Expanded(child: new Container(
        //       child: new Text('我是谁'),
        //       color: Colors.red,
        //       width: 500.0,
        //       // height: 200.0,
        //       alignment: Alignment.topRight,
        //     ),),
        //     // Row(),
        //   ],
        // )
      ),
    );
  }
}

