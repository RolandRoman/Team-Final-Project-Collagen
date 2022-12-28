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
                title: const Text("Teman"),
                titleTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                    onPressed: () {
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 420,
                  decoration: const BoxDecoration(
                    color: Color(0xff3167FF),
                  ),
                  child: const Text(
                    'Permintaan Pertemanan',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                requestfriend1,
                requestfriend2,
                requestfriend1,
                requestfriend2,

                const SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 420,
                  decoration: const BoxDecoration(
                    color: Color(0xff3167FF),
                  ),
                  child: const Text(
                    'Daftar Teman',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                friend1,
                friend1,
                friend1,
                friend1,
                friend1,
                friend1,
                friend1,
                friend1,

              ],
            ),
          )
      ),
    );
  }

  PreferredSize get requestfriend1 {
    return PreferredSize(
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
          title: ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            leading: Image.asset("assets/images/Picture1.png"),
            title: const Text(
              'JukJerus23',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: const Text(
              'Universitas Indonesia',
              style: TextStyle(fontSize: 12),
            ),
          ),
          titleTextStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.blue,
                  ),
                  child: const Text(
                    'Terima',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.grey,
                  ),
                  child: const Text(
                    'Tolak',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  PreferredSize get requestfriend2 {
    return PreferredSize(
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
          title: ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            leading: Image.asset("assets/images/Picture1.png"),
            title: const Text(
              'Kasih Dia Tempe',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: const Text(
              'Universitas Indonesia',
              style: TextStyle(fontSize: 12),
            ),
          ),
          titleTextStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.blue,
                  ),
                  child: const Text(
                    'Terima',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.grey,
                  ),
                  child: const Text(
                    'Tolak',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  PreferredSize get friend1 {
    return PreferredSize(
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
          title: ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            leading: Image.asset("assets/images/Picture1.png"),
            title: const Text(
              'Ezra',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: const Text(
              'Universitas Indonesia',
              style: TextStyle(fontSize: 12),
            ),
          ),
          titleTextStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.person_remove_alt_1_outlined,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
            IconButton(
                icon: const Icon(
                  Icons.message_outlined,
                  color: Colors.blue,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
