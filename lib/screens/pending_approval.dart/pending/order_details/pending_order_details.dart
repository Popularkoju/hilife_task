import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hilifeui/models/pending_models.dart';
import 'package:hilifeui/screens/pending_approval.dart/pending/order_details/order_item_lists.dart';

import 'bottons.dart';

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
            margin: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  child: Column(children: [
                    Container(
                      height: 30,
                      width: double.infinity,
                      color: Colors.blue[400],
                      child: Center(
                        child: Text(pendingModel.companyName,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Order Id: ",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text(pendingModel.orderId,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Order Date:",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text(pendingModel.orderDate,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Total Items :",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text("10",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Total Amount :",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text("Rs.5,2221",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  height: 30,
                  color: Colors.blue[400],
                  width: double.infinity,
                  child: const Center(
                    child: Text("Order Lists",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                OrderItemsList(),
                const SizedBox(
                  height: 6,
                ),
                ClickButtons()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
