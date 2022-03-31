// ignore_for_file: unnecessary_string_escapes


import 'dart:convert';

import 'package:catelog_management/models/catalog_items.dart';
import 'package:catelog_management/widgets/catalog_list.dart';
import 'package:catelog_management/widgets/drawer.dart';
import 'package:catelog_management/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
class HomePage extends StatefulWidget {
  
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData()async{
    await Future.delayed((Duration(seconds: 2)));

final catalog_json=await rootBundle.loadString("asset/files/catalog_data.json");
final decoded_data=jsonDecode(catalog_json);
var products_data=decoded_data['products'];
Catalog_Data.product=List.from(products_data).map<Item>((item) => Item.fromMap(item)).toList();


setState(() {
  
});


  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
   
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Catalog_Header(),
      if(Catalog_Data.product!=null && Catalog_Data.product.isNotEmpty)
List_Of_Catalog().expand()
else
Center(child: CircularProgressIndicator())

          
        ],
        
          ),
        ),
      )
  
      
      );
  }
}
class List_Of_Catalog extends StatelessWidget {
  const List_Of_Catalog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
    itemCount: Catalog_Data.product.length,
    itemBuilder: (context,index){
final Products=Catalog_Data.product[index];

return Catalog_items(product:Products);

    },
    );
  }
}
class Catalog_items extends StatelessWidget {
  final Item product;

  const Catalog_items({Key? key, required this.product}) :assert(product!=Null),super(key: key);


  

  @override
  Widget build(BuildContext context) {
    return VxBox(

child: Row(
  children: [
    Image.network(product.image).box.p16.color(Mytheme.CreamColor).rounded.make().p16(),
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
class Catalog_Header extends StatefulWidget {
  const Catalog_Header({ Key? key }) : super(key: key);

  @override
  State<Catalog_Header> createState() => _Catalog_HeaderState();
}

class _Catalog_HeaderState extends State<Catalog_Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        "Catalog APP".text.xl5.bold.color(Mytheme.DarkBlue).make(),
          "Trending Products".text.xl3.make(),
          
        ],
        
          );
  }
}


