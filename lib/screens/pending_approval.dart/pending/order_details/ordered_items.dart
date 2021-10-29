import 'package:flutter/material.dart';
import 'package:hilifeui/models/stockmodels.dart';

class OrderedItems extends StatelessWidget {
  final Stock stock;
  OrderedItems(this.stock);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        padding: EdgeInsets.only(left: 8, right: 8),
        margin: EdgeInsets.only(left: 0, right: 0, bottom: 2),
        height: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                stock.productName,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "XTYLMAN",
                style: TextStyle(),
              ),
            ],
          ),
          Text("${stock.quantity}" " " "${stock.unit}",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ]));
  }
}
