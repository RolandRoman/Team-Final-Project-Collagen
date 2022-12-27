import 'package:collagen/Screens/NavBarHeader/Pesan/Chatting.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class PesanBody extends StatefulWidget {
  static String routeName = "/pesan";

  const PesanBody({super.key});

  @override
  _PesanBody createState() => _PesanBody();
}

class _PesanBody extends State<PesanBody> {
  final String apiUrl = "https://reqres.in/api/users?per_page=15";

  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['data'];
  }

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
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatBody()),
                        );
                      },
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        NetworkImage(snapshot.data[index]['avatar']),
                      ),
                      title: Text(snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name']),
                      subtitle: Text(snapshot.data[index]['email']),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
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