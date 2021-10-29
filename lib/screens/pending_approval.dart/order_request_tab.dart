import 'package:flutter/material.dart';
import 'package:hilifeui/models/pending_models.dart';

import 'approval/approved_list.dart';
import 'pending/widgets/pendinglist.dart';

class Orders extends StatefulWidget {
  PendingModel? pendingModel;
  Orders({
    Key? key,
    this.pendingModel,
  }) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                const SliverAppBar(
                  title: Text('Order Request',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    indicatorColor: Colors.blue,
                    labelColor: Colors.black,
                    isScrollable: true,
                    tabs: [
                      Tab(child: Text('Pending')),
                      Tab(child: Text('Approved')),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [PendingList(), const ApprovedList()],
            ),
          )),
    );
  }
}
