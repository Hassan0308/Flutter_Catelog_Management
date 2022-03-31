import 'package:catelog_management/models/catalog_items.dart';
import 'package:catelog_management/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatelessWidget {
  final Item product;

  const DetailPage({Key? key, required this.product}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
         appBar: AppBar(),
         bottomNavigationBar: Container(
           color: Mytheme.CreamColor,
           child: ButtonBar(
             
            alignment: MainAxisAlignment.spaceBetween,
         children: [
         
           "\$${product.price}".text.xl2.bold.make(),
           
           ElevatedButton(onPressed:() {}, child: "Buy".text.make(),
           style: ButtonStyle(backgroundColor: MaterialStateProperty.all(
         
         Mytheme.DarkBlue
         
           ),
           shape: MaterialStateProperty.all(StadiumBorder())
           ),
           
           ).wh(100, 50),
         ],
         
          ).p32(),
         ),
         backgroundColor: Colors.white,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
            
              Hero(
                tag: Key(product.id.toString()),
                child: Image.network(product.image)).h40(context),
                Expanded(child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY ,
                  edge: VxEdge.TOP,
                  
                  child: Container(color: Mytheme.CreamColor,
                  padding: EdgeInsets.only(top: 40.0),
                  width: context.screenWidth,
                  child: Column(

                    children: [
product.name.text.xl3.color(Mytheme.DarkBlue).make(),
product.desc.text.xl2.color(Colors.black).make(),

                    ],
                  )
                  
                  
                  
                  )))
            ],
            
          ),
        ),
      );
  }
}