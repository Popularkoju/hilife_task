import 'package:flutter/material.dart';
import 'package:hilifeui/helper/utils.dart';

class CompanyName extends StatelessWidget {
  const CompanyName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(children: [
          Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(color: Colors.blue[400], shape: BoxShape.circle),
            child: const Center(
                child: Text("BS",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
          ),
          emptyHorizontalGap(20),
          const Text("Bihani Suppliers",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))
        ]),
      ),
    );
  }
}
