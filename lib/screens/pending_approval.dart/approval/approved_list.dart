import 'package:flutter/material.dart';
import 'package:hilifeui/models/pending_models.dart';

import 'widgets/approved_requests.dart';

class ApprovedList extends StatefulWidget {
  const ApprovedList({Key? key}) : super(key: key);

  @override
  _ApprovedListState createState() => _ApprovedListState();
}

class _ApprovedListState extends State<ApprovedList> {
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
                    // showModalBottomSheet(
                    //     backgroundColor: Colors.transparent,
                    //     isScrollControlled: true,
                    //     context: context,
                    //     builder: (context) => PendingApproval(pending[index]));
                  },
                  child: ApprovedRequest(pendingData[index])),
              itemCount: pendingData.length),
        ))
      ],
    );
  }
}
