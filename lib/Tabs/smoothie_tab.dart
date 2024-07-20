import 'package:flutter/material.dart';
import 'package:myapp/Utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  
   SmoothieTab({super.key});

final List smoothiesonsale = [
["Mint","40",Color.fromARGB(255, 170, 248, 209),"assets/MintSmoothie.png"],
["Strawberry","50",Colors.pink[50],"assets/StrawberrySmoothie.png"],
["Orange","60", Color.fromARGB(255, 255, 218, 183),"assets/OrangeSmoothie.png"],
["Blueberry","30",Color.fromARGB(255, 217, 173, 253),"assets/BlueberrySmoothie.png"],

];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesonsale.length,
      padding:const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1/1.5,
        crossAxisCount: 2
        ), 
        itemBuilder: ((context, index) {
          return SmoothieTile(
            donutflavor: smoothiesonsale[index][0],
            donutprice: smoothiesonsale[index][1],
            donutcolor: smoothiesonsale[index][2],
            imagename: smoothiesonsale[index][3],
          );

        })
        );
  }
}