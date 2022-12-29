import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailShopBody extends StatefulWidget {
  static String routeName = "/detailshop";

  const DetailShopBody({super.key});

  @override
  _DetailShopBody createState() => _DetailShopBody();
}

class _DetailShopBody extends State<DetailShopBody> {
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
            iconTheme: IconThemeData(
              color: Color(0xff3167FF),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "Detail Item",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Card(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(49, 103, 255, 0.4),
                offset: Offset(0, 4.0),
                blurRadius: 4.0,
              ),
            ]),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: SizedBox(
                      width: 400,
                      height: 250,
                      child: Expanded(
                          child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/DetailItem.png'),
                              fit: BoxFit.fill),
                        ),
                      )),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(49, 103, 255, 0.4),
                        offset: Offset(0, 4.0),
                        blurRadius: 4.0,
                      ),
                    ]),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Rp. 9000",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )),
                  Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 130),
                          child: Text(
                            "Ayam Jago + Kandang ",
                            style: TextStyle(fontSize: 16.0),
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
                              color: Color(0xff3167FF),
                            ),
                            child: const Text(
                              'Beli',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, bottom: 10),
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
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SizedBox(
                width: 200,
                child: Text(
                  "Informasi Penjual",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/Picture1.png',
                  scale: 0.9,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Shafwan Babayo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  width: 80,
                ),
                SizedBox(
                  width: 50,
                  child: FittedBox(
                    child: FloatingActionButton(
                      backgroundColor: Color(0xffD9D9D9),
                      onPressed: () {},
                      child: Icon(
                        Icons.mail_outline,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 50,
                  child: FittedBox(
                    child: FloatingActionButton(
                      backgroundColor: Color(0xffD9D9D9),
                      onPressed: () {},
                      child: Icon(
                        Icons.person_add_outlined,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SizedBox(
                width: 200,
                child: Text(
                  "Deskripsi Produk",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Morbi molestie enim ac consectetur fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis eu libero tristique, hendrerit nunc rutrum, tempor ipsum. Morbi lobortis felis in elit efficitur vestibulum. ",
            ),
          ),
        ],
      )),
    );
  }
}
