
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog_items.dart';
import '../../widgets/theme.dart';


class Add_To_Cart extends StatefulWidget {

  final Item Product;
  const Add_To_Cart({
    required this.Product,
    Key? key,
  }) : super(key: key);

  @override
  State<Add_To_Cart> createState() => _Add_To_CartState();
}

class _Add_To_CartState extends State<Add_To_Cart> {
final _cart= CartModel();
  @override
  Widget build(BuildContext context) {
       bool isAdded=_cart.items.contains(widget.Product)??false;

    return ElevatedButton(onPressed:() {
if(!isAdded){
isAdded=isAdded.toggle();
final _catalog=CartModel();


// _cart.catalog=_catalog;
_cart.add(widget.Product);

setState(() {
  
});}

      
    }, child: isAdded?Icon(Icons.done):"Add To Cart".text.make(),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(

Mytheme.DarkBlue

    ),
    shape: MaterialStateProperty.all(StadiumBorder())
    ),
    
    );
  }
}