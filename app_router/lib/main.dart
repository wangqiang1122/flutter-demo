import 'package:flutter/material.dart';
void main()=>runApp(new myApp());
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ) {
    return MaterialApp(
      title: '我是第一页',
      home: new First()
    );
  }
}
class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 新的一个页面
      title: '1',
      home: Scaffold(
         appBar: AppBar(
           title: new Text('我是第一页'),
         ),
         body: Center(
           child: RaisedButton(
             child: Text('进入第二页'),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute( // 路由组件
                  builder: (context) => new Seard(),
               ));
             },
           ),
         )
      ),
    );
  } 
}
class Seard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( // 窗口组件
        appBar: AppBar(
          title: Text('我是第二页'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('返回第一页'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        )
      );
  }
}