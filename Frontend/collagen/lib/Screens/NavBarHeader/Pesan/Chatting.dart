// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';


class ChatBody extends StatefulWidget {
  static String routeName = "/chat";

  const ChatBody({super.key});

  @override
  _ChatBody createState() => _ChatBody();
}

class _ChatBody extends State<ChatBody> {
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.square(60),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(49, 103, 255, 0.4),
              offset: Offset(0, 4.0),
              blurRadius: 4.0,
            ),
          ]),
          child: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff3167FF),
            title: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/Picture1.png",
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Shafwan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {},
                  child: _PopUpMenu(),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                DateChip(date: DateTime.utc(2022,12,10) ),
                BubbleNormal(
                  text: 'Ikut gk did?, kurang 1 nih',
                  isSender: false,
                  color: const Color.fromRGBO(49, 103, 255, 0.4),
                  tail: false,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                BubbleNormal(
                  text: 'Iya sabar otw, mau anterin nyokap dulu',
                  color: Colors.blue,
                  tail: false,
                  sent: true,
                  seen: true,
                  delivered: true,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                DateChip(date: DateTime.now() ),
                BubbleNormal(
                  text: 'Itu tugas DRP gimana did? udah ada progress apa belom, deadline senen soalnya',
                  isSender: false,
                  color: const Color.fromRGBO(49, 103, 255, 0.4),
                  tail: false,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                BubbleNormal(
                  text: 'belom ul, masih sibuk urusin kpu, paling nanti malem gw lanjutin, soalnya lagi hype banget ini',
                  color: Colors.blue,
                  tail: false,
                  sent: true,
                  seen: true,
                  delivered: true,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                BubbleNormal(
                  text: 'Oke diid',
                  isSender: false,
                  color: const Color.fromRGBO(49, 103, 255, 0.4),
                  tail: false,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),

                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          MessageBar(
            replying: false,
            replyingTo: 'Ikut gk ul? kurang 1 nih',
            messageBarColor: Colors.white,
            onSend: (_) => print(_),
            sendButtonColor: Colors.black,
            actions: [],
          ),
        ],
      ),
    );
  }
}

class MessageBar extends StatelessWidget {
  final bool replying;
  final String replyingTo;
  final List<Widget> actions;
  final TextEditingController _textController = TextEditingController();
  final Color replyWidgetColor;
  final Color replyIconColor;
  final Color replyCloseColor;
  final Color messageBarColor;
  final Color sendButtonColor;
  final void Function(String)? onTextChanged;
  final void Function(String)? onSend;
  final void Function()? onTapCloseReply;

  /// [MessageBar] constructor
  ///
  ///
  MessageBar({
    this.replying = false,
    this.replyingTo = "",
    this.actions = const [],
    this.replyWidgetColor = const Color(0xffF4F4F5),
    this.replyIconColor = Colors.blue,
    this.replyCloseColor = Colors.black12,
    this.messageBarColor = const Color(0xffF4F4F5),
    this.sendButtonColor = Colors.blue,
    this.onTextChanged,
    this.onSend,
    this.onTapCloseReply,
  });

  /// [MessageBar] builder method
  ///
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            replying
                ? Container(
                    color: replyWidgetColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: replyIconColor,
                          size: 24,
                        ),
                        Expanded(
                          child: Text(
                            'Re : $replyingTo',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InkWell(
                          onTap: onTapCloseReply,
                          child: Icon(
                            Icons.close,
                            color: replyCloseColor,
                            size: 24,
                          ),
                        ),
                      ],
                    ))
                : Container(),
            replying
                ? Container(
                    height: 1,
                    color: Colors.grey.shade300,
                  )
                : Container(),
            Container(
              color: messageBarColor,
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Row(
                children: <Widget>[
                  ...actions,
                  Expanded(
                    child: Container(
                      child: TextField(
                        controller: _textController,
                        keyboardType: TextInputType.multiline,
                        textCapitalization: TextCapitalization.sentences,
                        minLines: 1,
                        maxLines: 3,
                        onChanged: onTextChanged,
                        decoration: InputDecoration(
                          hintText: "Tulis Pesan",
                          hintMaxLines: 1,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          hintStyle: const TextStyle(
                            fontSize: 16,
                          ),
                          fillColor: const Color.fromRGBO(49, 103, 255, 0.4),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 0.2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              color: Colors.black26,
                              width: 0.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: InkWell(
                      child: Icon(
                        Icons.send,
                        color: sendButtonColor,
                        size: 24,
                      ),
                      onTap: () {
                        if (_textController.text.trim() != '') {
                          if (onSend != null) {
                            onSend!(_textController.text.trim());
                          }
                          _textController.text = '';
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                    Text("Lihat Profil",
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
                    Text("Cari",
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
                    Text("Bersihkan Pesan",
                      style: TextStyle(
                          color: Colors.black
                      ),)
                  ],
                )),
          )),
      PopupMenuItem(
          value: 3,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                child: Row(
                  children: const <Widget>[
                    Text("Bisukan Notifikasi",
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
      Icons.more_vert_rounded,
      size: 30,
      color: Colors.white,
    ),
  ),
);
