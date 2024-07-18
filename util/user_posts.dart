import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
             Row(children: [
               //profile photo
               Container(
                 width: 40,
                 height: 40,
                 decoration: BoxDecoration(
                   color: Colors.red[300],
                   shape: BoxShape.circle,
                 ),
               ),
               SizedBox(
                 width: 10,
               ),
               Text(name, style: TextStyle(fontWeight: FontWeight.bold),
               ),
             ],),
              Icon(Icons.menu_open,color: Colors.red,),
            ],
          ),
        ),
        //post
        Container(
          height: 350,
          color: Colors.grey[300],
        ),

        //below the post -> buttons and comments
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(Icons.chat, color: Colors.red,),
                    ),
                    Icon(Icons.mobile_screen_share,color: Colors.red,),
                ],
                ),
                Icon(Icons.collections_bookmark_outlined, color: Colors.red,),
              ],
            ),
          ),

        //like by...
        Padding(
          padding: const EdgeInsets.all(2.5),
          child: Row(
            children: [
            Text('  Şahiner ',   style: TextStyle(fontWeight: FontWeight.bold),),
            Text(
              've',
            ),
            Text(' diğerleri ',   style: TextStyle(fontWeight: FontWeight.bold),),
            Text(
                'beğendi',
            ),
          ],
          ),
        ),
        //caption
        Padding(
          padding: const EdgeInsets.only(top: 5,right: 210, bottom: 5),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Şahiner',
                  style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: ' Bu harika bir fikir!!'
                ),
              ],
            ),
          ),
        ),
        //comments
      ],
    );
  }
}

