import 'package:flutter/material.dart';
import 'package:hilifeui/models/pending_models.dart';
import 'package:hilifeui/screens/pending_approval.dart/pending/order_details/pending_order_details.dart';
import 'package:hilifeui/screens/pending_approval.dart/pending/widgets/pending_requests.dart';

class PendingList extends StatefulWidget {
  @override
  _PendingListState createState() => _PendingListState();
}

class _PendingListState extends State<PendingList> {
  final pendingData = PendingModel.getPendingList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SizedBox(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            PendingOrderDetails(pendingData[index])));
                  },
                  child: PendingRequest(pendingData[index])),
              itemCount: pendingData.length),
        ))
      ],
    );
  }
}
