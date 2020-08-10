import 'package:flutter/material.dart';
import 'package:newproject_app/adminpages/personaldetails.dart';
import 'package:newproject_app/adminpages/stafflist.dart';
class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome>
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
                PersonalDetails(),
              ]),
        ),
      ),
    );
  }
}


class AppClipper extends CustomClipper<Path> {
  final double cornerSize;
  final double diagonalHeight;
  final bool roundedBottom;
  AppClipper({this.cornerSize, this.diagonalHeight, this.roundedBottom = true});

  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(0, cornerSize * 1.5);
    path.lineTo(0, size.height - (roundedBottom ? cornerSize : 0));

    if (roundedBottom)
      path.quadraticBezierTo(0, size.height, cornerSize, size.height);
    path.lineTo(size.width - (roundedBottom ? cornerSize : 0), size.height);

    if (roundedBottom)
      path.quadraticBezierTo(
          size.width, size.height, size.width, size.height - cornerSize);
    path.lineTo(size.width, diagonalHeight + cornerSize);
    path.quadraticBezierTo(size.width, diagonalHeight, size.width - cornerSize,
        diagonalHeight * .9);
    path.lineTo(cornerSize * 2, cornerSize);
    path.quadraticBezierTo(0, 0, 0, cornerSize * 1.5);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}