import 'package:flutter/material.dart';


class ScreenDetails extends StatelessWidget {
  const ScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('this is products details page'),),
          IconButton(onPressed: (){
            Navigator.of(context).pop();
          }, icon: Icon(Icons.close))
        ],
      ),
    );
  }
}
