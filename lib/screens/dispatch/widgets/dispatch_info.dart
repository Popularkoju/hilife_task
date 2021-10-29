import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hilifeui/helper/custom_widgets.dart';
import 'package:hilifeui/helper/utils.dart';

class DispatchInfo extends StatelessWidget {
  const DispatchInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white70,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            emptyVerticalGap(6),
            const Text("#25645",
                style: TextStyle(
                  fontSize: 14,
                )),
            const Text("03/20/2078",
                style: TextStyle(
                  fontSize: 14,
                )),
            emptyVerticalGap(10),
            const Text("Bihani Supliers",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            emptyVerticalGap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.receipt,
                  size: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("Delivery Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 6),
                    Text("Ason-7, Bangemuda"),
                    Text("kathmandu")
                  ],
                )
              ],
            ),
            emptyVerticalGap(10),
            Divider(
              height: 5,
              thickness: 2,
              color: Colors.black.withOpacity(0.1),
            ),
            emptyVerticalGap(10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Order id:",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    Text("#35221",
                        style: TextStyle(
                          fontSize: 16,
                        ))
                  ],
                ),
                emptyVerticalGap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Order Date:",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    Text("3/13/2078",
                        style: TextStyle(
                          fontSize: 16,
                        ))
                  ],
                ),
                emptyVerticalGap(10),
                Divider(
                  height: 5,
                  thickness: 2,
                  color: Colors.black.withOpacity(0.1),
                ),
                emptyVerticalGap(10),
                RowDispatch("Tracker Id:", "2tYM45"),
                emptyVerticalGap(10),
                applyDivider(),
                emptyVerticalGap(10),
                RowDispatch("Vehicle No:", "Ba 2 Kha 1645"),
                emptyVerticalGap(10),
                applyDivider(),
                emptyVerticalGap(10),
                RowDispatch("Total Items:", "5"),
                const SizedBox(height: 10),
                RowDispatch("Total Amount:", "500"),
                emptyVerticalGap(60),
                SizedBox(
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0,
                          primary: Colors.green[400]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("View Items",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
