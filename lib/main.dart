import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hilifeui/screens/dispatch/dispatch.dart';

import 'package:hilifeui/screens/pending_approval.dart/order_requesttab.dart';
import 'package:hilifeui/screens/stock/stock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: [SystemUiOverlay.]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const StockScreen()));
          },
          child: const Card(
            child: ListTile(
                leading: Text("Stock"),
                trailing: Icon(
                  Icons.arrow_forward,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DispatchScreen()));
          },
          child: const Card(
            child: ListTile(
                leading: Text("dispatch"),
                trailing: Icon(
                  Icons.arrow_forward,
                )),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Orders()));
          },
          child: const Card(
            child: ListTile(
                leading: Text("pending"),
                trailing: Icon(
                  Icons.arrow_forward,
                )),
          ),
        ),
      ],
    ));
  }
}
