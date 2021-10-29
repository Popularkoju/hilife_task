import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hilifeui/screens/dispatch/widgets/dispatch_info.dart';
import 'package:hilifeui/screens/dispatch/widgets/dispatchappbar.dart';

class DispatchScreen extends StatelessWidget {
  const DispatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dispatch",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: const [
              //   DispatchAppBar(),

              // CompanyName(),
              // body part
              SizedBox(
                height: 2,
              ),

              DispatchInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
