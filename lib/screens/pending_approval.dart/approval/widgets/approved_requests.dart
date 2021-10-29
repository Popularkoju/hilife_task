import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hilifeui/helper/custom_widgets.dart';
import 'package:hilifeui/helper/utils.dart';
import 'package:hilifeui/models/pending_models.dart';

class ApprovedRequest extends StatelessWidget {
  final PendingModel pendingModel;

  const ApprovedRequest(this.pendingModel);

  @override
  Widget build(BuildContext context) {
    return pendingModel.isPending == false
        ? Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 150,
                margin: const EdgeInsets.only(right: 6, left: 6, bottom: 4),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(pendingModel.companyName,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                padding: const EdgeInsets.all(8),
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: pendingModel.isPending
                                      ? Colors.red
                                      : Colors.green,
                                ),
                              ),
                            ]),
                        SizedBox(height: 3),
                        Divider(
                            height: 5,
                            thickness: 2,
                            color: Colors.black.withOpacity(0.2)),
                        emptyVerticalGap(3),
                        RowAP("Order Id:", pendingModel.orderDate),
                        emptyVerticalGap(3),
                        RowAP("Order Date:", pendingModel.orderDate),
                        emptyVerticalGap(3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("STATUS:",
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Center(
                              child: pendingModel.isPending
                                  ? const Text("PENDING",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black))
                                  : const Text("Approved",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
          )
        : emptyVerticalGap(0);
  }
}
