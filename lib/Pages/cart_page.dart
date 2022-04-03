import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
title: "Cart".text.make(),



),
body: Column(

  children: [
   Cart_List().expand(),
    SizedBox(
height: 200.0,
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,

  children: [
    
"\$9999".text.xl4.color(context.theme.accentColor).make(),
ElevatedButton(onPressed: (){
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying Not Supported Yet!".text.make(),));



}, 

style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)),
child: "Buy".text.make()).w32(context)

  ],
),

    )
  ],
),


    );
  }
}

class Cart_List extends StatefulWidget {
  const Cart_List({ Key? key }) : super(key: key);

  @override
  State<Cart_List> createState() => _Cart_ListState();
}

class _Cart_ListState extends State<Cart_List> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
itemBuilder:(context,index) {

return ListTile(
leading: Icon(Icons.done),
title:"item1".text.make(), 
trailing: IconButton(
icon: Icon(Icons.remove),
onPressed: () {


},

),






);

},

    );
  }
}