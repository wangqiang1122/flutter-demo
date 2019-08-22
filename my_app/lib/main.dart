import 'package:flutter/material.dart';

void main()=>(runApp(myApp()));
class myApp extends StatelessWidget{ // 创建静态窗口
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我是card',
      home: Scaffold( // 
           appBar: AppBar(
             title: new Text('我是card'),
           ),
            body: new Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: new Text('吉林省哈哈市嘿嘿区',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    ),),
                    subtitle: new Text('我是条数发发发发发发发发发发发发发'), 
                    leading: new Icon(Icons.access_alarms),
                  ),
                  new Divider()
                ],
              ),
            ),
      )
    );
  }
}