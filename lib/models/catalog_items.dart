import 'package:flutter/cupertino.dart';

class Item{

final int id;
final String name;
final String desc;
final num price;
final String color;
final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  //constuctor
    factory Item.fromMap(Map<String,dynamic> map){

     return Item(
id: map["id"],
name: map["name"],
desc: map["desc"],
price: map["price"],
color: map["color"],
image: map["image"]

      );
    }
    toMap()=>{
"id":id,
"name":name,
"desc":desc,
"price":price,
"color":color,
"image":image,


    };

}





class Catalog_Data{

static List<Item> product=[

Item(

  id: 1,
 name: "M hassan",
  desc: "testing",
   price: 999,
    color:"#35505a",
     image:"https://images.unsplash.com/photo-1567581935884-3349723552ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bW9iaWxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
   
];


}