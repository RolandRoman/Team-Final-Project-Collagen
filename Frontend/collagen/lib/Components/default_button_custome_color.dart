import 'package:flutter/material.dart';

class DefaultButtonCustomeColor extends StatelessWidget {
  const DefaultButtonCustomeColor({
    Key? key,
    this.text,
    this.color,
    this.press,
  }) : super(key: key);
  final String? text;
  final Color? color;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: (56),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white, shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: color,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: (18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
