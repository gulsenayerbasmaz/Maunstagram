import 'package:flutter/material.dart';
import 'package:instagram/util/account.tab1.dart';
import 'package:instagram/util/account.tab2.dart';
import 'package:instagram/util/account.tab3.dart';
import 'package:instagram/util/account.tab4.dart';
import 'package:instagram/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 60,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //profile photo
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      shape: BoxShape.circle,
                    ),
                  ),
                  // number of pots,followers,following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '100',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '112',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20,),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //name and bio
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
               Padding(
                 padding: const EdgeInsets.only(right: 300,top: 10),
                 child: Text(
                      'Huriye',
                      style: TextStyle(fontWeight: FontWeight.bold,),
                    ),
               ),
                  Padding(
                    padding: const EdgeInsets.only(right: 215),
                    child: Text('Software Engineer 3/4'),
                  ),
              ],
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Center(child: Text('Edit Profile'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(5),),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Center(child: Text('Add Tools'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(5),),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Center(child: Text('Insights'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(5),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'Belek(Akev)'),
                  BubbleStories(text: 'Muş Alparslan'),
                  BubbleStories(text: 'Gümüşhane'),
                ],
              ),
            ),
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_on_sharp, color: Colors.red,),
              ),
              Tab(
                icon: Icon(Icons.video_library,color: Colors.red,),
              ),
              Tab(
                icon: Icon(Icons.shopping_cart_rounded,color: Colors.red,),
              ),
              Tab(
                icon: Icon(Icons.person,color: Colors.red,),
              ),
            ]),
            Expanded(child: TabBarView(children: [
              AccountTab1(),
              AccountTab2(),
              AccountTab3(),
              AccountTab4(),
            ],))
          ],
        ),
      ),
    );
  }
}
