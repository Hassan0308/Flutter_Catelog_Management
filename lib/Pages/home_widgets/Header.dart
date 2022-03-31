import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/theme.dart';

class Catalog_Header extends StatelessWidget {
  const Catalog_Header({ Key? key }) : super(key: key);

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