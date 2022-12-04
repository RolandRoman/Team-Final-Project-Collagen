import 'package:collagen/Screens/Login/LoginScreen.dart';
import 'package:collagen/utils/constants.dart';
import 'package:flutter/material.dart';

class InputDataForm extends StatefulWidget {
  const InputDataForm({super.key});

  @override
  _InputDataForm createState() => _InputDataForm();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Male"), value: "Male"),
    const DropdownMenuItem(child: Text("Female"), value: "Female"),
    const DropdownMenuItem(child: Text("Other"), value: "Other"),
  ];
  return menuItems;
}

class _InputDataForm extends State<InputDataForm> {
  String? FirstName;
  String? LastName;
  DateTime? BornDate;
  String? University;

  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  TextEditingController txtBornDate = TextEditingController();
  TextEditingController txtUniversity = TextEditingController();

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildFirstName(),
          const SizedBox(height: 20),
          buildLastName(),
          const SizedBox(height: 20),
          buildBornDate(),
          const SizedBox(height: 20),
          buildGender(),
          const SizedBox(height: 20),
          buildUniversity(),
          const SizedBox(height: 20),
          Container(
            width: 400,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xff3167FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: const Text(
                "Simpan",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/images/vector_inputdata.png",
            alignment: Alignment.bottomLeft,
            cacheHeight: 150,
            cacheWidth: 350,
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstName() {
    return TextFormField(
      controller: txtFirstName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Nama Depan',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle:
        TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildLastName() {
    return TextFormField(
      controller: txtLastName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Nama Belakang',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle:
        TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildBornDate() {
    return TextFormField(
      controller: txtBornDate,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: "Tanggal Lahir",
      ),
      onTap: () async{
        DateTime? date = DateTime.now();
        FocusScope.of(context).requestFocus(FocusNode());
        date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
        if(date == Null) return;
        txtBornDate.text = date.toString();
      },
    );
  }

  DropdownButtonFormField buildGender() {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        hintText: "Jenis Kelamin",
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.8, color: Colors.black),
          borderRadius: BorderRadius.circular(32),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(32),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      iconSize: 30,
      dropdownColor: Colors.white,
      items: dropdownItems,
      onChanged: (newValue) {
        setState(() {
        });
      },
    );
  }

  TextFormField buildUniversity() {
    return TextFormField(
      controller: txtUniversity,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        hintText: 'Universitas Asal',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        labelStyle:
        TextStyle(color: focusNode.hasFocus ? mTitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}