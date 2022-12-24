import 'package:collagen/Screens/Add_Post/AddPostScreen.dart';
import 'package:collagen/Screens/NavBarBody/FriendBody.dart';
import 'package:collagen/Screens/NavBarBody/HomeBody.dart';
import 'package:collagen/Screens/NavBarBody/MenuBody.dart';
import 'package:collagen/Screens/NavBarBody/ShopBody.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  static String routeName = "/homepage";

  @override
  _HomePageScreen createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen> {
  int index = 0;
  final pages = [
    HomeBody(),
    FriendBody(),
    null,
    ShopBody(),
    MoreBody(),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: pages[index],

        bottomNavigationBar: NavigationBar(
        height: 60,
        selectedIndex: index,
        backgroundColor: Colors.blue,
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined,
              color: Colors.white,),
            selectedIcon: Icon(Icons.home,
              color: Colors.white,),
            label: ' ',
          ),
          NavigationDestination(
            icon: Icon(Icons.supervisor_account_outlined,
              color: Colors.white,),
            selectedIcon: Icon(Icons.supervisor_account_rounded,
              color: Colors.white,),
            label: ' ',
          ),
          NavigationDestination(
            icon: Icon(Icons.supervisor_account_outlined,
            color: Colors.blue,),
            label: ' ',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined,
              color: Colors.white,),
            selectedIcon: Icon(Icons.shopping_cart_sharp,
              color: Colors.white,),
            label: ' ',
          ),
          NavigationDestination(
            icon: Icon(Icons.more_horiz_outlined,
            color: Colors.white,),
            selectedIcon: Icon(Icons.more_horiz,
              color: Colors.white,),
            label: ' ',
          ),
        ],
      ),
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, AddPostScreen.routeName);
              },
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: const CircleBorder(
                side: BorderSide(color: Colors.white, width: 4.0),
              ),
              child: const Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}