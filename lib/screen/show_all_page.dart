import 'package:flutter/material.dart';

import '../dimension/dimension.dart';

class ShowAllPage extends StatefulWidget {
  const ShowAllPage({super.key});

  @override
  State<ShowAllPage> createState() => _ShowAllPageState();
}

class _ShowAllPageState extends State<ShowAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(left: s10),
          child: Text(
            'All DONORS',
            style: TextStyle(fontSize: s16, fontWeight: FontWeight.w400),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: s25),
            child: Container(
                padding: EdgeInsets.all(s5),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(
                  Icons.person,
                  color: Colors.red,
                )),
          )
        ],
      ),
    );
  }
}
