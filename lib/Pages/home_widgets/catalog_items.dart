
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
      child: Image.network(product.image).box.p16.color(context.theme.canvasColor).rounded.make().p16()),
    Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
children: [
 product.name.text.bold.color(context.theme.accentColor).make(),
 product.desc.text.caption(context).color(context.theme.accentColor).make(),
 ButtonBar(
   alignment: MainAxisAlignment.spaceBetween,
children: [

  "\$${product.price}".text.color(context.theme.accentColor).xl2.bold.make(),
  
  ElevatedButton(onPressed:() {}, child: "Add To Cart".text.make(),
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


    ).rounded.color(context.theme.cardColor).square(150).make().py16();
  }
}