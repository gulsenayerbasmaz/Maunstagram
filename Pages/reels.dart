import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserReels extends StatelessWidget {
  const UserReels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      backgroundColor: Colors.redAccent,
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
                Icon(Icons.manage_search, color: Colors.red,size: 30,),
                Container(
                  child: Text(
                      ' Search',
                      style: GoogleFonts.dancingScript(color: Colors.red,fontSize: 30,)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
