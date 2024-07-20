import 'package:flutter/material.dart';
import 'package:myapp/Utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  
   DonutTab({super.key});

final List donutsonsale = [
["Chocolate","40",Colors.brown[50],"assets/Choco.png"],
["Strawberry","50",Colors.pink[50],"assets/Strawberry.png"],
["Pista","60", Colors.green[50],"assets/Pista.png"],
["Mango","30",Colors.yellow[50],"assets/Mango.png"],
["Pista","60", Colors.green[50],"assets/Pista.png"],
["Mango","30",Colors.yellow[50],"assets/Mango.png"],
];
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount: donutsonsale.length,
      padding:const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1/1.5,
        crossAxisCount: 2
        ), 
        itemBuilder: ((context, index) {
          return DonutTile(
            donutflavor: donutsonsale[index][0],
            donutprice: donutsonsale[index][1],
            donutcolor: donutsonsale[index][2],
            imagename: donutsonsale[index][3],
          );

        })
        );
  }
}