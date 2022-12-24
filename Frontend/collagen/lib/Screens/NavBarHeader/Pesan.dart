import 'package:collagen/Screens/NavBarHeader/Pesan/Chatting.dart';
import 'package:flutter/material.dart';

class PesanBody extends StatefulWidget {
  static String routeName = "/pesan";

  const PesanBody({super.key});

  @override
  _PesanBody createState() => _PesanBody();
}

class _PesanBody extends State<PesanBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.square(60),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(49,103, 255, 0.4),
              offset: Offset(0, 4.0),
              blurRadius: 4.0,
            ),
          ]),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              "Pesan",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            iconTheme: const IconThemeData(
                color: Colors.black
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Friend1(),
              Friend2(),
              Friend3()
            ],
          ),
        ),
      ),
    );
  }
}

class Friend1 extends StatelessWidget {
  const Friend1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChatBody()),
              );
            },
            leading: Image.asset("assets/images/Picture1.png"),
            title: Text('Shafwan Maulana'),
            subtitle: Text('Test'),
          ),
        ],
      ),
    );
  }
}

class Friend2 extends StatelessWidget {
  const Friend2({super.key});

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
        ],
      ),
    );
  }
}

class Friend3 extends StatelessWidget {
  const Friend3({super.key});

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
        ],
      ),
    );
  }
}