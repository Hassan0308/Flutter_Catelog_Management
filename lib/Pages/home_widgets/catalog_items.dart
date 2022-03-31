
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog_items.dart';
import '../../widgets/theme.dart';

class Catalog_items extends StatelessWidget {
  final Item product;

  const Catalog_items({Key? key, required this.product}) :assert(product!=Null),super(key: key);


  

  @override
  Widget build(BuildContext context) {
    return VxBox(

child: Row(
  children: [
    Hero(
      
       tag: Key(product.id.toString()),
      child: Image.network(product.image).box.p16.color(Colors.white).rounded.make().p16()),
    Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
children: [
 product.name.text.bold.color(Mytheme.DarkBlue).make(),
 product.desc.text.caption(context).make(),
 ButtonBar(
   alignment: MainAxisAlignment.spaceBetween,
children: [

  "\$${product.price}".text.xl2.bold.make(),
  
  ElevatedButton(onPressed:() {}, child: "Buy".text.make(),
  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(

Mytheme.DarkBlue

  ),
  shape: MaterialStateProperty.all(StadiumBorder())
  ),
  
  ),
],

 )
],

    ))
  ],
)


    ).white.square(150).make().py16();
  }
}