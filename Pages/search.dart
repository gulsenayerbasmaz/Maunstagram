import 'package:flutter/material.dart';
import 'package:instagram/util/explore_grid.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[350],
            child: Row(
              children: [
                Icon(Icons.camera_enhance_outlined, color: Colors.red,size: 27,),
                Container(
                  child: Text(
                    ' Reels',
                    style: GoogleFonts.dancingScript(color: Colors.red,fontSize: 30,)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: ExploreGrid(),
      ),
    );
  }


}
