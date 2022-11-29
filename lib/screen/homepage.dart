import 'package:blood_donor/dimension/dimension.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            // centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(left: s10),
              child: Text(
                'JOHAR TOWN, LAHORE',
                style: TextStyle(fontSize: s16, fontWeight: FontWeight.w400),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: s25),
                child: Container(
                    padding: EdgeInsets.all(s5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.person,
                      color: Colors.red,
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
