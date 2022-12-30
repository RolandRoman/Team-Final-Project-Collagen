import 'package:collagen/Screens/NavBarBody/friend/FriendProfileBody.dart';
import 'package:flutter/material.dart';

import 'HomeBody.dart';

class ProfileBody extends StatefulWidget {
  static String routeName = "/profile";

  const ProfileBody({super.key});

  @override
  _ProfileBody createState() => _ProfileBody();
}

class _ProfileBody extends State<ProfileBody> {
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
              ),
            ]),
            child: AppBar(
              backgroundColor: Colors.white,
              title: const Text("Profile"),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 2.0),
                        blurRadius: 4.0,
                      ),
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff3167FF), Color(0xff0591DB)])),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 10, top: 20, bottom: 20),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/Picture1.png",
                                  scale: 0.45,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Title(
                                      color: Colors.white,
                                      child: const Text(
                                        "Muhammad Shafwan Maulana",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      "Universitas Indonesia",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Icon(
                                            Icons.edit,
                                            size: 20.0,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Profile',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 540,
                height: 1,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: (10), vertical: 5),
                    child: Text(
                      'Teman',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: (15)),
                    child: Text(
                      '30 Teman',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: (30)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: (30)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 160,
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.asset('assets/images/Market.png'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Digra Izham',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FriendProfileBody()),
                          );
                        },
                        child:                       SizedBox(
                          height: 180,
                          width: 160,
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('assets/images/Market.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Digra Izham',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lihat Semua',
                    style: TextStyle(
                        color: Color(0xff3169FF), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: 540,
                height: 1,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                  ),
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: (10), vertical: 10),
                child: SizedBox(
                  width: 400,
                  child: Text('Postingan',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                ),
              ),
              Post1(),
              Post2()
            ],
          ),
        ),
      ),
    );
  }
}
