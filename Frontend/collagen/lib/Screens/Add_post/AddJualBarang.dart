import 'package:collagen/Screens/Homepage/HomePageScreen.dart';
import 'package:flutter/material.dart';

class AddJualBarang extends StatefulWidget {
  static String routeName = "/add_shop";


  @override
  _AddJualBarang createState() => _AddJualBarang();
}

class _AddJualBarang extends State<AddJualBarang> {
  String? judul;
  String? harga;
  String? deskripsi;
  String? lokasi;

  TextEditingController txtJudul = TextEditingController();
  TextEditingController txtHarga = TextEditingController();
  TextEditingController txtDeskripsi = TextEditingController();
  TextEditingController txtLokasi= TextEditingController();

  FocusNode focusNode = FocusNode();

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
                color: Color.fromRGBO(49, 103, 255, 0.3),
                offset: Offset(0, 4.0),
                blurRadius: 4.0,
              ),
            ]),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                "Jual Barang",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Image.asset('assets/images/Picture1.png')),
                  Text(
                    'Shafwan Ramadhan',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Card(
                margin: EdgeInsets.zero,
                color: Colors.white,
                shape:
                RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
                child: SizedBox(
                    width: 380,
                    height: 200,
                    child: Container(
                      padding: EdgeInsets.only(top: 80),
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: Column(
                          children: [
                            Icon(Icons.add_a_photo_outlined),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Tambahkan Foto',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    )),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 380,
                child: buildJudul(),
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: 380,
                child: buildHarga(),
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: 380,
                child: buildDeskripsi(),
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: 380,
                child: buildLokasi(),
              ),
              const SizedBox(height: 40),
              Container(
                width: 150,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff3167FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      content: const Text('Apakah anda yakin ingin menjual produk ini?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return HomePageScreen();
                              },
                            ));
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                  child: const Text(
                    "Jual",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

  TextFormField buildJudul() {
    return TextFormField(
      controller: txtJudul,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Judul',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        labelStyle:
            TextStyle(color: Colors.black,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildHarga() {
    return TextFormField(
      controller: txtHarga,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Harga',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        labelStyle:
          TextStyle(color: Colors.black,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildDeskripsi() {
    return TextFormField(
      controller: txtDeskripsi,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Deskripsi',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        labelStyle:
        TextStyle(color: Colors.black,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildLokasi() {
    return TextFormField(
      controller: txtLokasi,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Lokasi',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        labelStyle:
        TextStyle(color: Colors.black,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
