import 'package:catelog_management/Pages/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/catalog_items.dart';
import '../home.dart';
import 'catalog_items.dart';

class List_Of_Catalog extends StatelessWidget {
  const List_Of_Catalog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
    itemCount: Catalog_Data.product.length,
    itemBuilder: (context,index){
final Products=Catalog_Data.product[index];

return


 InkWell(
   
   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(product: Products),)),
   child: Catalog_items(product:Products));

    },
    );
  }
}