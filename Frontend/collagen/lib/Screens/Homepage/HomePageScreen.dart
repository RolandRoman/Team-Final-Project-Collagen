import 'package:collagen/Screens/Add_Post/AddFriendScreen.dart';
import 'package:collagen/Screens/Add_Post/AddPostScreen.dart';
import 'package:collagen/Screens/NavBarBody/FriendBody.dart';
import 'package:collagen/Screens/NavBarBody/HomeBody.dart';
import 'package:collagen/Screens/NavBarBody/MenuBody.dart';
import 'package:collagen/Screens/NavBarBody/ShopBody.dart';
import 'package:flutter/material.dart';
import '../Add_Post/AddPostScreen2.dart';

class HomePageScreen extends StatefulWidget {
  static String routeName = "/homepage";

  @override
  _HomePageScreen createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen> {
  Widget _offsetPopup() => PopupMenuButton<int>(
        onSelected: (result) {
          if (result == 0) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const AddPostScreen()));
          }
          if (result == 1) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const AddPostScreen2()));
          }
          if (result == 2) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const AddFriendScreen()));
          }
        },
    offset: const Offset(-85, -130),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(40.0),
      ),
    ),
    elevation: 0,
    color: const Color(0xff8D9EFF),
    itemBuilder: (BuildContext context) {
      return [
        const PopupMenuItem(
            padding: EdgeInsets.symmetric(horizontal: 50),
            value: 0,
            child: Center(
              child: Text(
                "Tambahkan Postingan",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )),
        const PopupMenuItem(
            padding: EdgeInsets.symmetric(horizontal: 50),
            value: 1,
            child: Center(
              child: Text(
                "Jual Barang",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
            )),
        const PopupMenuItem(
            padding: EdgeInsets.symmetric(horizontal: 50),
            value: 2,
            child: Center(
              child: Text(
                "Tambahkan Teman",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
            )),
      ];
    },
        child: const Center(
          child: Icon(
            Icons.add,
            size: 35,
          ),
        ),
      );

  int index = 0;
  final pages = [
    const HomeBody(),
    const FriendBody(),
    null,
    const ShopBody(),
    const MoreBody(),
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
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.supervisor_account_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.supervisor_account_rounded,
                color: Colors.white,
              ),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.supervisor_account_outlined,
                color: Colors.blue,
              ),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.shopping_cart_sharp,
                color: Colors.white,
              ),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.more_horiz_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
              label: ' ',
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: const CircleBorder(
                side: BorderSide(color: Colors.white, width: 4.0),
              ),
              child: _offsetPopup(),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
