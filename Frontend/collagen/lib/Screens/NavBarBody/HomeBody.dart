import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  _HomeBody createState() => _HomeBody();
}

class _HomeBody extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        children: <Widget>[
          Post1(),
          Post1(),
          Post2(),
          Post2(),
        ],
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
          Row(
            children: const [
              Expanded(
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    softWrap: true,
                    maxLines: 10,
                  )
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
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                    softWrap: true,
                    maxLines: 10,
                  )
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
            alignment: Alignment.center,
            child: Row(
              children: [
                Container(
                  child: Row(
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
          )
        ],
      ),
    );
  }
}