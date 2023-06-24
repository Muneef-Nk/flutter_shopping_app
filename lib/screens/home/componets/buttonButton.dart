import 'package:flutter/material.dart';


Widget buttonButton({required bool isSeleted, required IconData icon}) {
  return Container(
      width: 50,
      height: 50,
      decoration:isSeleted? BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 7)
          ]):null,
      child: Icon(
        icon,size: 28,
        color:isSeleted? Colors.white:Colors.black,
      ));
}