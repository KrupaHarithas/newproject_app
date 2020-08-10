import 'package:flutter/material.dart';
import 'package:newproject_app/staffpage/stafflist.dart';

class StaffHome extends StatefulWidget {
  @override
  _StaffHomeState createState() => _StaffHomeState();
}

class _StaffHomeState extends State<StaffHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return  new MaterialApp(
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              color: Colors.purple,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(child: new Container()),
                    new TabBar(
                      tabs: [
                        new Text("Staff List", style: TextStyle(fontSize: 21.0,)),
                        new Text("Personal Details", style: TextStyle(fontSize: 21.0,))],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
              controller: _tabController,
              children: [
                StaffList(),
                StaffList(),
//
              ]),),
      ),
    );
  }
}
