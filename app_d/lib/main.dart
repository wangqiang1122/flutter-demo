import 'package:flutter/material.dart';

class Product {
  final String title; //商品描述
  final String description; // 商品描述
  Product(this.title,this.description);
}
void main() => runApp(MaterialApp(
  title: '导航数据传递',
  home: new First(products: List.generate(20, (i) =>Product('hs商品 $i','这是一个商品编号$i'))),
));

class First extends StatelessWidget{
  List<Product> products;
  First({Key key,@required this.products}):super(key:key);
  // First(list, this.products):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
                return  ListTile(
                  title: Text('${products[index].title}'),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => productDetail(product:products[index])
                      )
                    );
                  },
                );
        }),
    );
  }
}

class productDetail extends StatelessWidget{
  final Product product;
  productDetail({Key key,@required this.product}): super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),
      body: new Center(
        child: Text('详情:${product.description}'),
      ),
    );
  }
}