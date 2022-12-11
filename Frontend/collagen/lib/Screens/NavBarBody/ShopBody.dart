import 'package:flutter/material.dart';

class ShopBody extends StatefulWidget {
  const ShopBody({super.key});

  @override
  _ShopBody createState() => _ShopBody();
}

class _ShopBody extends State<ShopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 7.5 / 10.0,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.all(5),
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
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/Market.png'),
                                fit: BoxFit.fill),
                          ),
                        )),
                        Padding(
                            padding: EdgeInsets.only(left: 10.0, bottom: 6, top: 10),
                            child: Text(
                              "Rp. 9000",
                              style: TextStyle(fontSize: 16.0),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 10.0, bottom: 10),
                            child: Text(
                              "Ayam Jago + Kandang ",
                              style: TextStyle(fontSize: 16.0),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 10.0, bottom: 10),
                            child: Text(
                              "Depok",
                              style: TextStyle(fontSize: 16.0),
                            )),

                      ],
                    )
                )
            );
          }),

    );

  }
}
