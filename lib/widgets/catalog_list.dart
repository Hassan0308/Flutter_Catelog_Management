import 'package:catelog_management/models/catalog_items.dart';
import 'package:flutter/material.dart';



class Catalog_List extends StatelessWidget {

  final Item item;

  const Catalog_List({Key? key, required this.item}) :super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return
    
    Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child:(Catalog_Data.product!=null && Catalog_Data.product.isNotEmpty)? ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price.toString()}",
          textScaleFactor: 1.5,
          style: TextStyle(
      
        color: Colors.green
          ),
          ),
          
        ):Center(

          child: CircularProgressIndicator(

         
          ),
        ),
      ),
    )
    ;
  }}
