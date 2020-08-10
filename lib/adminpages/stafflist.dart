import 'package:flutter/material.dart';
import 'package:newproject_app/adminpages/innerstaffdetails.dart';
import 'package:newproject_app/adminpages/staffdetails.dart';


class StaffList extends StatefulWidget {
  @override
  _StaffListState createState() => _StaffListState();
}

class _StaffListState extends State<StaffList> {
  List<ShoeModel> shoeList = ShoeModel.list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ...shoeList.map((data) {
            return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Third(data),
                    ),
                  );
                },
                child: Container(
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                          )
                        ]),
                    child: Row(
                      children: <Widget>[
                        Image(
                            image: AssetImage("assets/${data.imgPath}"),
                            width: 100,
                            height: 80),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "${data.name}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12)),
                              Text(
                                "${data.pro}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )));
          })
        ],
      ),
    );
  }
}
