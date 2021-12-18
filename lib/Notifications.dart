// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                  "Your",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: devicewidth * 0.5,
                child: const Text(
                  "Notifications.",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                height: deviceheight * 0.024,
              ),
              Container(height: deviceheight*0.8,
                child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return NotificationsPage(
                          height: deviceheight,
                          width: devicewidth,
                          time: "9 min ago");
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationsPage extends StatefulWidget {
  final double height;
  final double width;
  final String time;
  const NotificationsPage(
      {required this.height, required this.width, required this.time});

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Today",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Divider(
                color: Colors.black,
                indent: 5,
              ))
            ],
          ),
          SizedBox(
            height: widget.height * 0.02,
          ),
          Row(children: [
            Text("Your request for ",
                style: TextStyle(
                  fontSize: 12,
                )),
            Text("Manage ",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            Text("at ",
                style: TextStyle(
                  fontSize: 12,
                )),
            Text("Baadonia & Sons has",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            SizedBox(
              width: widget.width * 0.03,
            ),
            InkWell(
              child: Container(
                height: widget.height * 0.03,
                width: widget.width * 0.14,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    "View",
                    style: TextStyle(fontSize: 9, color: Colors.white),
                  ),
                ),
              ),
            )
          ]),
          Row(
            children: [
              Text("been shortlisted. Please contact ",
                  style: TextStyle(
                    fontSize: 12,
                  )),
              Text("9074770963 ",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              Text("for ",
                  style: TextStyle(
                    fontSize: 12,
                  )),
            ],
          ),
          Row(children: [
            Text(
              "further information",
              style: TextStyle(fontSize: 12),
            )
          ]),
       SizedBox(height: widget.height*0.03,) ],
      ),
    );
  }
}
