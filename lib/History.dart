// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  late double deviceheight;
  late double devicewidth;

  @override
  Widget build(BuildContext context) {
    deviceheight = MediaQuery.of(context).size.height;
    devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: deviceheight,
      width: devicewidth,
      padding: EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: (deviceheight * 0.08),
            ),
            Container(
              width: devicewidth * 0.5,
              child: const Text(
                "Aplications",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: devicewidth * 0.5,
              child: const Text(
                "History.",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            SizedBox(
              height: deviceheight * 0.024,
            ),
            Container(
              height: deviceheight * 0.8,
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    
                    return HistoryBooking(
                      height: deviceheight,
                      width: devicewidth,
                      payment: "₹ 10-100/month",
                      iscompleted: true,
                      index:index,
                    );
                  }),
            )
          ],
        ),
      ),
    ));
  }
}

class HistoryBooking extends StatefulWidget {
  final double height;
  final double width;
  final String payment;
  final bool iscompleted;
  final int index;
  HistoryBooking(
      {required this.height,
      required this.width,
      required this.payment,
      required this.iscompleted,
      required this.index});

  @override
  _HistoryBookingState createState() => _HistoryBookingState();
}

class _HistoryBookingState extends State<HistoryBooking> {
  List<Color> colors = <Color>[Colors.black, Colors.redAccent];

  @override
  Widget build(BuildContext context) {
   
    if(widget.index==0) {
      colors.shuffle();
    }
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Manager",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: widget.iscompleted ? colors[1] : colors[0])),
              SizedBox(
                width: widget.width * 0.13,
              ),
              Text(
                widget.payment,
                style: TextStyle(
                    fontSize: 11,
                    color: widget.iscompleted ? colors[1] : colors[0]),
              ),
              SizedBox(
                width: widget.width * 0.13,
              ),
              Text(
                widget.iscompleted ? "Completed" : "ongoing",
                style: TextStyle(
                    fontSize: 11,
                    color: widget.iscompleted ? colors[1] : colors[0]),
              )
            ],
          ),
          SizedBox(
            height: widget.height * 0.015,
          ),
          Row(
            children: [
              Text("Badonia & Sons",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: widget.iscompleted ? colors[1] : colors[0])),
              SizedBox(
                width: widget.width * 0.12,
              ),
              Container(
                height: widget.height * 0.02,
                width: widget.width * 0.14,
                decoration: BoxDecoration(
                  color: widget.iscompleted ? colors[1] : colors[0],
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Full Time",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: widget.width * 0.15,
              ),
              Container(
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 12,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: widget.iscompleted ? colors[1] : colors[0],
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
            ],
          ),
          Text("Civil Lines,Sagar",
              style: TextStyle(
                  fontSize: 11,
                  color: widget.iscompleted ? colors[1] : colors[0])),
          SizedBox(
            height: widget.height * 0.02,
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
