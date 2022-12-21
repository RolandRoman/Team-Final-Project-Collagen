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
                          MaterialPageRoute(
                              builder: (context) => NotifBody()),
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
                          MaterialPageRoute(
                              builder: (context) => PesanBody()),
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
                  Post1(),
                  Post2(),
                  Post1(),
                  Post2(),
                ],
              ),
            ),
          ),


      ),
    );

  }
}

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ListTile(
            leading: Image.asset("assets/images/Picture1.png"),
            title: Text('Shafwan Maulana'),
            subtitle: Text('10 menit yang lalu'),
          ),
          SizedBox(
            width: 100,
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
          SizedBox(
            height: 5,
          ),
          Image.asset("assets/images/PostImage.png"),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 8,
            endIndent: 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.thumb_up_alt_outlined),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.thumb_down_alt_outlined),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.comment_outlined),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context){
                                return CommentBody();
                              },
                          )


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
                      child: Icon(Icons.share),
                      onPressed: () {/* ... */},
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

class Post2 extends StatelessWidget {
  const Post2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ListTile(
            leading: Image.asset("assets/images/Picture1.png"),
            title: Text('Shafwan Maulana'),
            subtitle: Text('10 menit yang lalu'),
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
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 8,
            endIndent: 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.thumb_up_alt_outlined),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.thumb_down_alt_outlined),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.comment_outlined),
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
                      child: const Icon(Icons.share),
                      onPressed: () {/* ... */},
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
