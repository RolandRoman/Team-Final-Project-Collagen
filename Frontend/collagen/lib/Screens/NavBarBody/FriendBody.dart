import 'package:flutter/material.dart';
import '../NavBarHeader/Search.dart';

class FriendBody extends StatefulWidget {
  const FriendBody({super.key});

  @override
  _FriendBody createState() => _FriendBody();
}

class _FriendBody extends State<FriendBody> {
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
                  "Teman"
              ),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
              actions: <Widget>[
                IconButton(icon: const Icon(Icons.search, color: Colors.blue,), onPressed: () {
                  showSearch(
                    context: context,
                    delegate: MySearchDelegate(),
                  );
                },
                ),
              ],
            ),
          ),
        ),
      ),
    );


  }
}