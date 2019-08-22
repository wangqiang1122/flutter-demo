import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
     title: '子页面向父页面传参数',
     home: first(),
  ));


class first extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('父页面'),
      ),
      body:Center(
        child: RouteButton(),
      )
    );
  }
}
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed:(){ navigateTO(context);},
      child: Text('寻找子页面返回参数'),
    );
  }
}
navigateTO(BuildContext context) async{
  final reslut = await Navigator.push(context, 
   MaterialPageRoute(builder: (context)=> xunzhai())  
   );
   Scaffold.of(context).showSnackBar(SnackBar(
     content: Text('$reslut'),
   )); 
}

class  xunzhai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是子页面'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('我是1'),
            onPressed: (){
              Navigator.pop(context,'我是1');
            },
          ),
           RaisedButton(
            child: Text('我是2'),
            onPressed: (){
              Navigator.pop(context,'我是2');
            },
          )
        ],
      ),
    );
  }
}
