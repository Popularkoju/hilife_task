import 'package:flutter/material.dart';
import 'package:hilifeui/models/stockmodels.dart';

import 'ordered_items.dart';

class OrderItemsList extends StatelessWidget {
  OrderItemsList({Key? key}) : super(key: key);

  final stock = Stock.generateStock();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {}, child: OrderedItems(stock[index])),
              itemCount: stock.length),
        )
      ],
    );
  }
}
