import 'package:flutter/material.dart';

import '../../../moduls/holiday_products.dart';
import '../../../moduls/produts.dart';
import '../../details/screen_details.dart';

Widget holidayCards(int index, BuildContext context){
  return GestureDetector(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScreenDetails(name: holidayProducts[index].name, price: holidayProducts[index].price, watchImage: holidayProducts[index].img,)));
    },
    child: Container(
      margin: EdgeInsets.only(top: 10,bottom: 20,left: 10, right: 10),
      width: 220,
      decoration: BoxDecoration(
          color: Colors.grey[200],

          borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              width: 110,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage(holidayProducts[index].img),fit: BoxFit.cover)
              )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(holidayProducts[index].name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ),
              SizedBox(height: 5,),
              Text(holidayProducts[index].size, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey, fontSize: 15),),
              SizedBox(height: 50,),
              Text(holidayProducts[index].price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ],
          )
        ],
      ),
    ),
  );
}