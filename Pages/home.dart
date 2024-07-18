import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Huriye',
    'Yusuf',
    'Gülsena',
    'Ömer',
    'Pınar',
    'Efe',
    'Evin',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Maunstagram', style: GoogleFonts.dancingScript(color: Colors.red,fontSize: 35,),),
            Row(
              children: [
                Icon(Icons.add_circle_outlined, color: Colors.red,size: 25,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.menu_book,color: Colors.red,size: 25,),
                ),
                Icon(Icons.wechat_sharp,color: Colors.red,size: 25,),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //STORİES
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context,index) {
              return BubbleStories(text: people[index]);
            }),
             ),
          //POSTS
         Expanded(
             child: ListView.builder(
                 itemCount: people.length,
                 itemBuilder: (context, index){
                   return UserPosts(name: people[index],
                   );
                 }),
         ),
        ],
      ),
    );
  }
}
