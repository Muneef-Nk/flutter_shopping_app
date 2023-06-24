import 'package:flutter/material.dart';
import 'package:learn_shopping_app/screens/details/screen_details.dart';

import '../../../moduls/produts.dart';


Widget itemCards(int index, BuildContext context) {
  return GestureDetector(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScreenDetails()));
    },
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 180,
          width: 130,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey.shade200)
            ],
            image: DecorationImage(image: AssetImage(products[index].img,), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Text(
          products[index].name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 7,),
        Text(
          products[index].price,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    ),
  );
}