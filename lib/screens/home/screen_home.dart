
import 'package:flutter/material.dart';

import 'componets/buttonButton.dart';
import 'componets/home_body.dart';
bool isSeleted=false;
class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
              size: 30,
            )),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                )),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1,)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonButton(isSeleted: false, icon: Icons.home),
            buttonButton(isSeleted: false, icon: Icons.search_rounded),
            buttonButton(isSeleted: true, icon: Icons.shopping_bag),
            buttonButton(isSeleted: false, icon: Icons.payment_rounded),
            buttonButton(isSeleted: false, icon: Icons.account_circle),

          ],
        ),
      ),
      body: HomeBody(),
    );
  }






}
