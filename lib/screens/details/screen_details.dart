import 'package:flutter/material.dart';

class ScreenDetails extends StatefulWidget {

  final String name;
  final String watchImage;
  final String price;

   ScreenDetails({
     required this.name,
     required this.watchImage,
     required this.price
  });


  @override
  State<ScreenDetails> createState() => _ScreenDetailsState();
}

class _ScreenDetailsState extends State<ScreenDetails> {
  int qty=1;
  bool isFavoriteClicked=false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.watchImage),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            top: 30,
            left: 6,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ITEM', style: TextStyle(fontSize: 15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(widget.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text(widget.price, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                  ],),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('size', style: TextStyle(fontSize: 15),),
                            SizedBox(height: 5),
                            Text('40 mm',style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('QTY',style: TextStyle(fontSize: 15)),
                          SizedBox(height: 5,),
                          Text('$qty',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),

                      Row(
                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              if(qty<10){
                                qty++;
                              }

                            });
                          }, icon: Icon(Icons.add_circle)),
                          IconButton(onPressed: (){
                            setState(() {
                              if(qty>1){
                                qty--;
                              }
                            });
                          }, icon: Icon(Icons.remove_circle)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Divider(thickness: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Details', style: TextStyle(fontSize: 15),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.add))
                    ],
                  ),
                  SizedBox(height: 5,),
                  Divider(thickness: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping & Returns',style: TextStyle(fontSize: 15),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.add))
                    ],
                  ),
                  Divider(thickness: 2,),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          isFavoriteClicked=!isFavoriteClicked;
                        });
                      }, icon:isFavoriteClicked? Icon(Icons.favorite,color: Colors.pink, size: 40,):Icon(Icons.favorite_outline, size: 40,)),
                      Container(
                        // padding: EdgeInsets.symmetric(horizontal: 100),
                        height: 50,
                        width: 250,
                       decoration: BoxDecoration(
                         color: Colors.pink,
                         borderRadius: BorderRadius.circular(30),
                       ),
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_bag, color: Colors.white,),
                            SizedBox(width: 5,),
                            Text('Add to Bag', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
