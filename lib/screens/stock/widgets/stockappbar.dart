// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hilifeui/screens/dispatch/dispatch.dart';

class stockAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 30),
        child: Row(children: [
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 30),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            " Stock List",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
