import 'package:flutter/material.dart';

class Mytab extends StatelessWidget {
  const Mytab({super.key,required this.imagePath});

 final String imagePath;




  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
         color: Colors.grey[200],
         borderRadius: BorderRadius.circular(12) 
        ),
        child: Image.asset(imagePath),
        
        
      ),
    );
  }
}