import 'package:flutter/material.dart';
import 'package:learn_shopping_app/moduls/holiday_products.dart';

import '../../../moduls/produts.dart';
import '../screen_home.dart';
import 'holiday_cards.dart';
import 'item_cards.dart';

class HomeBody extends StatefulWidget {
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

List<String> bodyMenu = [
  'Watches',
  'Shoes',
  'Shorts',
  'Belts',
  'Suits',
];
int isSeletedIndex = 0;

List<String> menuItem = ['Menu', 'Women', 'Kids'];
int isSeletedMenuIndex = 0;


class _HomeBodyState extends State<HomeBody> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                'Shop ',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Text('Application',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menuItem.length,
              itemBuilder: (context, index) {
                return topMenuItems(index);
              }),
        ),
        SizedBox(height: 30),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 7)
                ]),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bodyMenu.length,
                      itemBuilder: (context, index) {
                        return buildText(index);
                      }),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return itemCards(index, context);
                      }),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 5,
                 decoration: BoxDecoration(
                   color: Colors.grey,
                     borderRadius: BorderRadius.circular(20)
                 ),
                   alignment: Alignment.centerLeft,
                  child: Container(
                    width: 100,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 20, bottom: 20),
                      child: Text('Holiday special',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,right: 20, bottom: 20),
                      child: Text('View All',
                        style: TextStyle(fontSize: 20,color: Colors.grey, fontWeight: FontWeight.bold
                        ),),
                    ),

                  ],
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: holidayProducts.length,
                      itemBuilder: (context, index) {
                        return holidayCards(index, context);
                      }),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }





  Widget buildText(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSeletedIndex = index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 20, right: 10),
            child: Text(
              bodyMenu[index],
              style: TextStyle(
                  color: isSeletedIndex == index ? Colors.black : Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                color: isSeletedIndex == index ? Colors.pink : Colors.grey,
                shape: BoxShape.circle),
          )
        ],
      ),
    );
  }

  Widget topMenuItems(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSeletedMenuIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        padding: EdgeInsets.all(10),
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          color: isSeletedMenuIndex == index ? Colors.pink : Colors.grey[600],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          menuItem[index],
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
