import 'package:flutter/material.dart';
import 'package:hilifeui/models/stockmodels.dart';

class StockItems extends StatelessWidget {
  final Stock stock;
  StockItems(this.stock);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 8, right: 8),
        margin: EdgeInsets.only(left: 0, right: 0, bottom: 2),
        height: 70,
        // decoration: BoxDecoration(
        //   color: stock.quantity == '0' ? Colors.white70 : Colors.white,
        //   borderRadius: BorderRadius.circular(0),
        //   boxShadow: [
        //     BoxShadow(
        //         offset: Offset(0, -2),
        //         blurRadius: 3,
        //         color: Colors.black.withOpacity(0.2))
        //   ],
        // ),
        // child: ListTile(
        //   tileColor: stock.quantity == '0' ? Colors.red[400] : Colors.white,
        //   dense: true,
        //   contentPadding: EdgeInsets.only(top: 2, left: 6, right: 6),
        //   title: Text(
        //     stock.productName,
        //     style: TextStyle(
        //       color: stock.quantity == '0' ? Colors.white : Colors.black,
        //       fontSize: 18.0,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   subtitle: Text(
        //     "Rs." "${stock.productRate}",
        //     style: TextStyle(
        //       color: stock.quantity == '0' ? Colors.white : Colors.black,
        //     ),
        //   ),
        //   trailing: Text("${stock.quantity}" " " "${stock.unit}",
        //       style: TextStyle(
        //           color: stock.quantity == '0' ? Colors.white : Colors.black,
        //           fontSize: 16,
        //           fontWeight: FontWeight.bold)),
        // ),

        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                stock.productName,
                style: TextStyle(
                  color: stock.quantity == '0' ? Colors.red[400] : Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "Rs." "${stock.productRate}",
                style: TextStyle(
                  color: stock.quantity == '0' ? Colors.red[400] : Colors.black,
                ),
              ),
            ],
          ),
          Text("${stock.quantity}" " " "${stock.unit}",
              style: TextStyle(
                  color: stock.quantity == '0' ? Colors.red[400] : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ]));
  }
}
