import 'package:collagen/Screens/NavBarBody/shop/DetailShopBody.dart';
import 'package:flutter/material.dart';
import '../NavBarHeader/Search.dart';

class ShopBody extends StatefulWidget {
  const ShopBody({super.key});

  @override
  _ShopBody createState() => _ShopBody();
}

class _ShopBody extends State<ShopBody> {

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
                title: const Text("Marketplace"),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 270,
                        child: Shop1(),
                      ),
                      SizedBox(
                        width: 200,
                        height: 270,
                        child: Shop2(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 270,
                        child: Shop3(),
                      ),
                      SizedBox(
                        width: 200,
                        height: 270,
                        child: Shop4(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class Shop1 extends StatelessWidget {
  Shop1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailShopBody()),
              );
            },
            child: Card(
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Market.png'),
                            fit: BoxFit.fill),
                      ),
                    )),
                    const Padding(
                        padding:
                            EdgeInsets.only(left: 10.0, bottom: 6, top: 10),
                        child: Text(
                          "Rp. 9000",
                          style: TextStyle(fontSize: 16.0),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Text(
                          "Ayam Jago + Kandang ",
                          style: TextStyle(fontSize: 16.0),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xff3167FF),
                            ),
                            Text("Jakarta Pusat")
                          ],
                        )),
                  ],
                ))));
  }
}

class Shop2 extends StatelessWidget {
  Shop2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailShopBody()),
              );
            },
            child: Card(
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Market2.png'),
                            fit: BoxFit.fill),
                      ),
                    )),
                    const Padding(
                        padding:
                            EdgeInsets.only(left: 10.0, bottom: 6, top: 10),
                        child: Text(
                          "Rp. 9000",
                          style: TextStyle(fontSize: 16.0),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Text(
                          "Ayam Jago + Kandang ",
                          style: TextStyle(fontSize: 16.0),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xff3167FF),
                            ),
                            Text("Jakarta Pusat")
                          ],
                        )),
                  ],
                ))));
  }
}

class Shop3 extends StatelessWidget {
  Shop3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailShopBody()),
              );
            },
            child: Card(
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Market3.png'),
                            fit: BoxFit.fill),
                      ),
                    )),
                    const Padding(
                        padding:
                            EdgeInsets.only(left: 10.0, bottom: 6, top: 10),
                        child: Text(
                          "Rp. 9000",
                          style: TextStyle(fontSize: 16.0),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Text(
                          "Ayam Jago + Kandang ",
                          style: TextStyle(fontSize: 16.0),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xff3167FF),
                            ),
                            Text("Jakarta Pusat")
                          ],
                        )),
                  ],
                ))));
  }
}

class Shop4 extends StatelessWidget {
  Shop4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailShopBody()),
              );
            },
            child: Card(
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Market4.png'),
                            fit: BoxFit.fill),
                      ),
                    )),
                    const Padding(
                        padding:
                            EdgeInsets.only(left: 10.0, bottom: 6, top: 10),
                        child: Text(
                          "Rp. 9000",
                          style: TextStyle(fontSize: 16.0),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Text(
                          "Ayam Jago + Kandang ",
                          style: TextStyle(fontSize: 16.0),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Row(
                          children: const <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xff3167FF),
                            ),
                            Text("Jakarta Pusat")
                          ],
                        )),
                  ],
                ))));
  }
}
