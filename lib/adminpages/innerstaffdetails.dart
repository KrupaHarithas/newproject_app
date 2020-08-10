import 'package:flutter/material.dart';
import 'package:newproject_app/adminpages/adminhome.dart';
import 'package:newproject_app/adminpages/staffdetails.dart';

class Third extends StatefulWidget {
  final ShoeModel shoeModel;
  Third(this.shoeModel);

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.shoeModel.color,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text(
          "DETAILS",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * .49,
                width: MediaQuery.of(context).size.width ,
                child: ClipPath(
                  clipper: AppClipper(
                    cornerSize: 0,
                    diagonalHeight: 0,
                    roundedBottom: false,
                  ),
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 80, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 300,
                          child: Text(
                            "${widget.shoeModel.name}",
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          "DETAILS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "${widget.shoeModel.desc}",
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: <Widget>[],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Hero(
                tag: "hero${widget.shoeModel.imgPath}",
                child: Image(
                  width: MediaQuery.of(context).size.width * .65,
                  image: AssetImage("assets/${widget.shoeModel.imgPath}"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}