// ignore_for_file: unnecessary_string_escapes


import 'dart:convert';

import 'package:catelog_management/models/catalog_items.dart';
import 'package:catelog_management/widgets/catalog_list.dart';
import 'package:catelog_management/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  
    return 
    
     Scaffold(
      
      appBar: AppBar(
        title: Text("Cetalog"),
      ),
     drawer: MyDrawer(),
      
      body: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        
        crossAxisSpacing: 4,
        mainAxisSpacing: 16,
        ) ,
        
        physics: BouncingScrollPhysics(),
        itemCount: Catalog_Data.product.length,
      
      itemBuilder:(context,index){
        final Products=Catalog_Data.product[index];

        return Container(
          color: Colors.green,
          padding: EdgeInsets.all(16),
          child: GridTile(child: Image.network(Products.image),
          header: Center(child: Text(Products.name)),
          footer: Text(Products.price.toString()),
          ),
        );
      } ,
      ),
  
      
      );
  }
}