import 'package:flutter/material.dart';

void main() => runApp(myApp(
  // items: List(1000)
  // items:new List<String>()
  // items:[12,3,4,5,6]
  items: new List<String>.generate(1000, (i) => 'item  $i')
));

class myApp extends StatelessWidget{ // 继承创建静态查窗口方法 Widget组件
    final List<String> items;
    myApp({ Key key, @required this.items }):super(key:key);// 接收函数传参数的方式
   @override
   Widget build(BuildContext context){  //build重写关键字
     return MaterialApp(
       title: '我是哈哈哈',
       home: Scaffold(
          appBar: AppBar(
            title: Text('我是listview'),
          ),
          body: new Container(
            child: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context,index){
                return new ListTile(
                  title: new Text('${items[index]}'),
                );
              },
            ),
          ),
          // body: new ListView(
          //   children: <Widget>[
          //     new Image.network('http://pic68.nipic.com/file/20150601/8164280_104301508000_2.jpg'),
          //     ListTile(
          //       leading: new Icon(Icons.accessibility),
          //       title: new Text('accessibility'),
          //     ),
          //      ListTile(
          //       leading: new Icon(Icons.phone),
          //       title: new Text('phone'),
          //     ),
          //     ListTile(
          //       leading: new Icon(Icons.offline_bolt),
          //       title: new Text('offline_bolt'),
          //     )
          //   ],
          // ),
          // body: Center(
          //   child: Container(
          //    height: 40.0,
          //    width: 500, 
          //    child: MyList()
          //   ),
          // ),
          floatingActionButton: Container(
            child: Text('我是家好'),
          ),
        
          bottomNavigationBar: Container(
            child: Text('11111',textAlign: TextAlign.center,style: TextStyle(
              fontSize: 40.0,
              color: Colors.red
            )),
          )
       ),
     );
   }
   
}
class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
               children: <Widget>[
                 new Container(
                   width: 150.0,
                   color: Colors.red,
                 ),
                  new Container(
                   width: 150.0,
                   color: Colors.blue,
                 ),
                 new Container(
                   width: 150.0,
                   color: Colors.deepOrange,
                 ),
                 new Container(
                   width: 150.0,
                   color: Colors.yellow,
                 )
               ],
    );
  }
}

