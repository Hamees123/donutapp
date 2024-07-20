import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
 final String donutflavor;
 final String donutprice;
 final donutcolor;
 final String imagename; 


  const SmoothieTile({super.key,required this.donutcolor,required this.donutflavor,required
  this.donutprice,required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutcolor,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutcolor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Text('\$$donutprice')),
              ],
            ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:24,vertical: 12 ),
                child: Image.asset(imagename),
              ),
              Text(donutflavor,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
         SizedBox(
          height: 4,
         ),
         Text("Dunkins",style: TextStyle(color: Colors.grey[600]),),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(Icons.favorite,color: Colors.pink[400],),
            Icon(Icons.add,color: Colors.grey[800],)
           ],),
         )
         ],
        ),
      ),
    );
  }
}