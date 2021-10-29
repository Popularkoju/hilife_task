import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hilifeui/helper/custom_widgets.dart';
import 'package:hilifeui/models/pending_models.dart';
import 'package:hilifeui/helper/utils.dart';

import 'order_item_lists.dart';
import 'widgets/bottons.dart';

class PendingOrderDetails extends StatelessWidget {
  PendingModel pendingModel;
  PendingOrderDetails(this.pendingModel, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          "Order Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            margin: const EdgeInsets.only(top: 8),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  child: Column(children: [
                    ContainerOrder(pendingModel.companyName),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        children: [
                          RowOd("Order Id", pendingModel.orderId),
                          RowOd("Order Date:", pendingModel.orderDate),
                          RowOd("Total Items:", "10"),
                          RowOd("Total Amount :", "Rs.5,2221"),
                        ],
                      ),
                    )
                  ]),
                ),
                emptyVerticalGap(3),
                ContainerOrder("Order List"),
                emptyVerticalGap(3),
                OrderItemsList(),
                ClickButtons()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
