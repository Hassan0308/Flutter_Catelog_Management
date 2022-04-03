import 'package:catelog_management/models/catalog_items.dart';
import 'package:flutter/material.dart';


class CartModel{

//Item field
late Catalog_Data _catalog_data;

Catalog_Data get catalog=>_catalog_data;
set catalog(Catalog_Data new_Catalog){
  _catalog_data=new_Catalog;
}

//get ids
final List<int> _item_Ids=[];

//get items in a cart

Iterable<Item> get items=>_item_Ids.map((id) => _catalog_data.getByid(id));

//get total price

num get totalPrice=>items.fold(0, (previousValue, element) => previousValue+ element.price);

//add 
void add(Item item){
  _item_Ids.add(item.id);


}
//remove
void remove(Item item){
  _item_Ids.remove(item.id);


}


}