import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context,index){
          return Padding(padding: const EdgeInsets.all(2.0),
            child: Container(color: Colors.redAccent[100],),
          );
        }
    );
  }
}
