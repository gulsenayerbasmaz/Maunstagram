import 'package:flutter/material.dart';
import 'package:instagram/util/shop_grid.dart';
import 'package:google_fonts/google_fonts.dart';

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Padding(padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shop',
                style: GoogleFonts.dancingScript(color: Colors.red,fontSize: 45,)),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.red,),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu,color: Colors.red,),
                ],
              ),
            ],
          ),
        ),

      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.grey[350],
                  child: Row(
                    children: [
                      Icon(Icons.manage_search, color: Colors.red,),
                      Container(
                        child: Text(
                          ' Search',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ),
          Expanded(child: ShopGrid())
        ],
      ),
    );
  }


}
