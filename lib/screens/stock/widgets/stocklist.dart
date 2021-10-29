import 'package:flutter/material.dart';
import 'package:hilifeui/models/stockmodels.dart';
import 'package:hilifeui/screens/stock/widgets/stockitem.dart';

import 'item_details.dart';

class StockList extends StatefulWidget {
  @override
  _StockListState createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  final stockList = Stock.generateStock();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 558,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => StockDetails(stockList[index]));
                  },
                  child: StockItems(stockList[index])),
              itemCount: stockList.length),
        )
      ],
    );
  }
}
