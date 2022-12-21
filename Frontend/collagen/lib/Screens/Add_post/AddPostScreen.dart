import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  static String routeName = "/add_post";

  const AddPostScreen({super.key});

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
                offset: Offset(0, 4.0),
                blurRadius: 4.0,
              ),
            ]),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                "Create Post",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
