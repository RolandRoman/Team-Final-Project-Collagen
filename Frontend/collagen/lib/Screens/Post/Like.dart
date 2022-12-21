import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class LikeBody extends StatefulWidget {
  static String routeName = "/like";

  @override
  _LikeBody createState() => _LikeBody();
}

class _LikeBody extends State<LikeBody> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Hadid',
      'pic': 'assets/images/Picture1.png',
      'message': 'I love to code',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Digra',
      'pic': 'assets/images/Picture1.png',
      'message': 'That`s Cool,',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Rasyaad',
      'pic': 'assets/images/Picture1.png',
      'message': 'Tipis tipis gak?',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Zoont',
      'pic': 'assets/images/Picture1.png',
      'message': 'Very cool',
      'date': '2021-01-01 12:00:00'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing: Text(data[i]['date'], style: TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Comment",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),

        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: CommentBox(
          child: commentChild(filedata),
          labelText: 'Tulis Komentar...',
          errorText: 'Comment cannot be blank',
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'Maul',
                  'pic': 'assets/images/Picture1.png',
                  'message': commentController.text,
                  'date': '2021-01-01 12:00:00'
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}
