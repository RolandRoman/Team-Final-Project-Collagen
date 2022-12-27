import 'package:collagen/Screens/NavBarHeader/Notif.dart';
import 'package:collagen/Screens/NavBarHeader/Pesan.dart';
import 'package:flutter/material.dart';
import '../NavBarHeader/Search.dart';
import '../Post/Comment.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  _HomeBody createState() => _HomeBody();
}

class _HomeBody extends State<HomeBody> {


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
              title: const Text("Beranda"),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              actions: <Widget>[
                IconButton(
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NotifBody()),
                      );
                    }),
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
                IconButton(
                    icon: const Icon(
                      Icons.mail_outline,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PesanBody()),
                      );
                    }),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Post1(),
                const Post2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Post1 extends StatefulWidget {
  const Post1({super.key});

  @override
  _Post1 createState() => _Post1();
}

class _Post1 extends State<Post1> {
  int _likecounter = 0;
  int _dislikecounter = 0;

  void _incrementCounter() {
    setState(() {
      _likecounter++;
    });
  }

  void _incrementCounter2(){
    setState(() {
      _dislikecounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  leading: Image.asset("assets/images/Picture1.png"),
                  title: const Text('Shafwan Maulana'),
                  subtitle: const Text('10 menit yang lalu'),
                ),
                titleTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                actions: <Widget>[
                  FittedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: _PopUpMenu(),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: const [
              Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: (10)),
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 10,
                        textAlign: TextAlign.justify)),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Image.asset("assets/images/PostImage.png"),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 8,
            endIndent: 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    TextButton(
                      child: const Icon(Icons.thumb_up_alt_outlined),
                      onPressed: _incrementCounter,

                    ),
                    Text(
                      '$_likecounter',
                    )
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Row(
                  children: <Widget>[
                    TextButton(
                      child: const Icon(Icons.thumb_down_alt_outlined),
                      onPressed: _incrementCounter2,
                    ),
                    Text(
                      '$_dislikecounter'
                    )
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: const Icon(Icons.comment_outlined),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return CommentBody();
                          },
                        ));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: _PopUpShare(),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Post2 extends StatefulWidget {
  const Post2({super.key});

  @override
  _Post2 createState() => _Post2();
}

class _Post2 extends State<Post2> {
  int _likecounter = 0;
  int _dislikecounter = 0;

  void _incrementCounter() {
    setState(() {
      _likecounter++;
    });
  }

  void _incrementCounter2(){
    setState(() {
      _dislikecounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  leading: Image.asset("assets/images/Picture1.png"),
                  title: const Text('Shafwan Maulana'),
                  subtitle: const Text('20 menit yang lalu'),
                ),
                titleTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                actions: <Widget>[
                  FittedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: _PopUpMenu(),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: const [
              Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: (10)),
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 10,
                        textAlign: TextAlign.justify)),
              )
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 8,
            endIndent: 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    TextButton(
                      child: const Icon(Icons.thumb_up_alt_outlined),
                      onPressed: _incrementCounter,

                    ),
                    Text(
                      '$_likecounter',
                    )
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Row(
                  children: <Widget>[
                    TextButton(
                      child: const Icon(Icons.thumb_down_alt_outlined),
                      onPressed: _incrementCounter2,
                    ),
                    Text(
                        '$_dislikecounter'
                    )
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: const Icon(Icons.comment_outlined),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CommentBody()),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: _PopUpShare(),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _PopUpMenu() => PopupMenuButton<int>(
  onSelected: (result) {},
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(40.0),
    ),
  ),
  elevation: 0,
  color: Colors.white,
  itemBuilder: (BuildContext context) {
    return [
      PopupMenuItem(
          value: 0,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.bookmark_border,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Bookmark",
                      style: TextStyle(
                          color: Colors.black
                      ),)
                  ],
                )),
          )),
      PopupMenuItem(
          value: 1,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.edit,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Edit",
                      style: TextStyle(
                          color: Colors.black
                      ),)
                  ],
                )),
          )),
      PopupMenuItem(
          value: 2,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.delete_outline_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Hapus",
                    style: TextStyle(
                      color: Colors.red
                    ),)
                  ],
                )),
          )),
    ];
  },
  child: const Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Icon(
      Icons.more_horiz_rounded,
      size: 30,
    ),
  ),
);

Widget _PopUpShare() => PopupMenuButton<int>(
  onSelected: (result) {},
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(40.0),
    ),
  ),
  elevation: 0,
  color: Colors.white,
  itemBuilder: (BuildContext context) {
    return [
      PopupMenuItem(
          value: 0,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.link,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Copy Link",
                      style: TextStyle(
                          color: Colors.black
                      ),)
                  ],
                )),
          )),
    ];
  },
  child: const Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Icon(
      Icons.share,
    ),
  ),
);