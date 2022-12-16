import 'package:collagen/Screens/NavBarBody/FriendBody.dart';
import 'package:collagen/Screens/NavBarBody/HomeBody.dart';
import 'package:collagen/Screens/NavBarBody/MoreBody.dart';
import 'package:collagen/Screens/NavBarBody/ShopBody.dart';
import 'package:collagen/Screens/NavBarHeader/Search.dart';
import 'package:collagen/Screens/NavBarHeader/Notif.dart';
import 'package:collagen/Screens/NavBarHeader/Pesan.dart';
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
        appBar: PreferredSize(
          preferredSize: const Size.square(60),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 2.0),
                blurRadius: 4.0,
              )
            ]),
            child: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                  "Hello, User"
              ),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
              leading: Image.asset("assets/images/Picture1.png"),
              actions: <Widget>[
                IconButton(icon: const Icon(Icons.notifications_outlined, color: Colors.blue,), onPressed: () {
                  Navigator.pushNamed(context, NotifBody.routeName);
                }),
                IconButton(icon: const Icon(Icons.search, color: Colors.blue,), onPressed: () {
                  showSearch(
                    context: context,
                    delegate: MySearchDelegate(),
                  );
                },),
                IconButton(icon: const Icon(Icons.mail_outline, color: Colors.blue,), onPressed: () {
                  Navigator.pushNamed(context, PesanBody.routeName);
                }),
              ],
            ),
          ),
        ),

        body: pages[index],

        bottomNavigationBar: NavigationBar(
          height: 60,
          selectedIndex: index,
          backgroundColor: Colors.blue,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(Icons.supervisor_account_outlined),
              selectedIcon: Icon(Icons.supervisor_account_rounded),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(Icons.supervisor_account_outlined),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(Icons.shopping_cart_sharp),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_horiz_outlined),
              selectedIcon: Icon(Icons.more_horiz),
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