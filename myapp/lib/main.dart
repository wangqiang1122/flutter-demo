import 'package:flutter/material.dart'; //material 是一个比较流行ui库 自行百度

void main() => runApp(new MyApp()); // 入口方法

class MyApp extends StatelessWidget { // 返回一个窗口部件
  @override // java语法 重写   的关键字
  Widget build(BuildContext context) {
    return  MaterialApp(    
      title: 'Welcome to Flutter',  //标题
      home:  Scaffold(    // 页面的主要文件 Scaffold创建
        appBar:  AppBar(
          title:  Text('我的App1'), // app上面的辩题
        ),
        // body:  Center(
        //   child:  Text('Hello Worldhaha发啊大法师',
        //   textAlign: TextAlign.left,
        //   overflow: TextOverflow.ellipsis,
        //   maxLines: 2,
        //   style:TextStyle(
        //     fontSize: 50,
        //     color: Color.fromRGBO(125, 125, 255, 1),
        //     fontWeight: FontWeight.bold,
        //     decoration: TextDecoration.underline,
        //     fontFamily: "Georgia"
        //   )),
        //   // color: Colors.red[200],
        // ),
      body: Container(
        // child: Text('dafafafafas',
        // overflow: TextOverflow.fade,
        // style: new TextStyle(
        //   fontSize: 30,
        //   fontWeight: FontWeight.w400,
        //   decoration: TextDecoration.underline,
        //   decorationStyle: TextDecorationStyle.dotted
        // ),),
        // height: 140.0,
        // width: 500.0,
        // // color: Colors.red,
        // alignment: Alignment.topRight,
        // padding:const EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
        // margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
        // decoration: BoxDecoration(
        //   gradient: const LinearGradient(
        //     colors: [Colors.blue, Colors.red, Colors.white]
        //   ),
        //   border: Border.all(width: 2.0,color: Colors.red)
        // ),
        child: Center(
            child: Container(
              child: new Image.network(
              'http://pic68.nipic.com/file/20150601/8164280_104301508000_2.jpg',
               fit: BoxFit.scaleDown,
               color: Colors.red,
               colorBlendMode: BlendMode.multiply,
               repeat: ImageRepeat.repeat,
              ),
              width: 300.0,
              height: 200.0,
              color: Colors.red,
            ) 
        )
       
      ) ,
      ),
    );
  }
}