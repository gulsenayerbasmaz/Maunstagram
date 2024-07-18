import 'package:flutter/material.dart';
import 'package:instagram/Pages/account.dart';
import 'package:instagram/Pages/home.dart';
import 'package:instagram/Pages/reels.dart';
import 'package:instagram/Pages/search.dart';
import 'package:instagram/Pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   // nagivation around the bottom nav bar
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  // different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_work_rounded,color: Colors.red,size: 30,), label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.video_library,color: Colors.red,size: 25,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.manage_search,color: Colors.red,size: 35,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded,color: Colors.red,size: 25,),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.red,size: 30,),label: ''),

          ],
        ),
      ),
    );
  }
}
