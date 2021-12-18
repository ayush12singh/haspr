// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types, avoid_unnecessary_containers, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:hasprassignment/History.dart';
import 'package:hasprassignment/Notifications.dart';
import 'package:hasprassignment/postad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Haspr',
      home: Navigationpage(),
    );
  }
}

class Navigationpage extends StatefulWidget {
  const Navigationpage({Key? key}) : super(key: key);

  @override
  _NavigationpageState createState() => _NavigationpageState();
}

class _NavigationpageState extends State<Navigationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RaisedButton(
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text('SeekerHome'),
            ),
            RaisedButton(
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Postad()),
                );
              },
              child: Text('PostAd'),
            ),
            RaisedButton(
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => History()),
                );
              },
              child: Text('History'),
            ),
            RaisedButton(
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              child: Text('Notifications'),
            ),
          ]),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late double deviceheight;
  late double devicewidth;
  late double e = 2;
  @override
  Widget build(BuildContext context) {
    deviceheight = MediaQuery.of(context).size.height;
    devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: deviceheight,
        width: devicewidth,
        padding: EdgeInsets.symmetric(horizontal: devicewidth * 0.03),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceheight * 0.06,
              ),
              Row(
                children: [
                  SizedBox(width: devicewidth * 0.04),
            
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: devicewidth * 0.4,
                        child: const Text(
                          "Good Morning Pankaj ,",
                          style: TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: devicewidth * 0.4,
                        child: const Text(
                          "Find Your,",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: devicewidth * 0.4,
                        child: const Text(
                          "Dream Job.",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    width: devicewidth * 0.25,
                  ),
                  const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/3859/0fdf/5d40981a6154a3e7439393ada656e03b?Expires=1640563200&Signature=VDJ30ERaSI8IuWFhOg0jJTQuqGNs1-UOmI4VUxOlM11fuaF9AcvJW67q23rCcSptuCTiwMr4r7HS8DEmZWxF8eyudAVO~lwC~PnuIhOZClkXLNM2wXEJiHOen0a3rD-fZ9IJxhP3KwFBEikI04YmjfEGSEXvsJf4zF6Kre9Lr7vtokIvberVje1~vOh1CMFP7A89BNPm0DvuVmoKdj2s7OqS6zFz-sNRquXbLyj50DDjgPdD~Lr4tlmUY6B9VeALlaYmowzIcCx2bCHey4deuZ8klPAtsG9qsqLp8RoEtkLtH2WCJvkt8foC6IO6111sc2wuhxAVhWKAQ7vJsd2e~w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA')),
                ],
              ),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Row(children: [
                Container(
                  width: devicewidth * 0.78,
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: "search for a job",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.format_align_left_outlined,
                  size: devicewidth * 0.1,
                )
              ]),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Popular ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text("Jobs", style: TextStyle(fontSize: 20)),
                    SizedBox(
                      width: deviceheight * 0.15,
                    ),
                    Text(
                      "Show all",
                      style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                // color:
                height: deviceheight * 0.23,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Listt(
                        height: deviceheight,
                        width: devicewidth,
                        verticall: false,
                      );
                    }),
              ),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Row(children: [
                SizedBox(width: devicewidth * 0.05),
                Text("Jobs "),
                Text(
                  "Near you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ]),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                // color:
                height: deviceheight * 0.37,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Listt(
                        height: deviceheight,
                        width: devicewidth,
                        verticall: true,
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0),
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                // color:
                //  height: deviceheight * 0.37,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Stack(children: [
                  ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      reverse: false,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return user(
                          height: deviceheight,
                          width: devicewidth,
                        );
                      }),
                  Positioned(
                      top: deviceheight * 0.09,
                      left: devicewidth * 0.08,
                      child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://s3-alpha-sig.figma.com/img/3859/0fdf/5d40981a6154a3e7439393ada656e03b?Expires=1640563200&Signature=VDJ30ERaSI8IuWFhOg0jJTQuqGNs1-UOmI4VUxOlM11fuaF9AcvJW67q23rCcSptuCTiwMr4r7HS8DEmZWxF8eyudAVO~lwC~PnuIhOZClkXLNM2wXEJiHOen0a3rD-fZ9IJxhP3KwFBEikI04YmjfEGSEXvsJf4zF6Kre9Lr7vtokIvberVje1~vOh1CMFP7A89BNPm0DvuVmoKdj2s7OqS6zFz-sNRquXbLyj50DDjgPdD~Lr4tlmUY6B9VeALlaYmowzIcCx2bCHey4deuZ8klPAtsG9qsqLp8RoEtkLtH2WCJvkt8foC6IO6111sc2wuhxAVhWKAQ7vJsd2e~w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'))),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class user extends StatefulWidget {
  final double height;
  final double width;
  user({required this.height, required this.width});

  @override
  _userState createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: widget.height * 0.18,
      padding: EdgeInsets.symmetric(horizontal: widget.width * 0.15),
      width: widget.width * 0.68,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: widget.height * 0.02,
          ),
          SizedBox(
            width: widget.width * 0.01,
          ),
          Text(
            "Suresh Pankaj Prasad Atisundar ",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: widget.height * 0.005,
          ),
          Container(
              child: Text("35 Years Old", style: TextStyle(fontSize: 10))),
          SizedBox(
            height: widget.height * 0.02,
          ),
          Container(
            height: widget.height * 0.02,
            width: widget.width * 0.22,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Center(
              child: Text(
                "One Time Service",
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          Row(
            children: [
              Text("Car & Bike Mechanic",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              SizedBox(
                width: widget.width * 0.015,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: widget.height * 0.0234,
                  width: widget.width * 0.143,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Text("Hire Me",
                        style: TextStyle(fontSize: 10, color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
          Text(
            "Civil lines Sagar",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
    
  }
}

class Listt extends StatefulWidget {
  final double height;
  final double width;
  final bool verticall;

  Listt({
    required this.height,
    required this.width,
    required this.verticall,
  });
  @override
  _ListtState createState() => _ListtState();
}

class _ListtState extends State<Listt> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: widget.verticall
            ? EdgeInsets.fromLTRB(20, 10, 20, 10)
            : EdgeInsets.fromLTRB(20, 10, 0, 10),
        height: widget.verticall ? widget.height * 0.18 : widget.height * 0.2,
        padding: EdgeInsets.symmetric(horizontal: widget.width * 0.05),
        width: widget.width * 0.68,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: widget.height * 0.02,
            ),
            Text(
              "Interior Carpet Designer",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: widget.height * 0.005,
            ),
            Row(
              children: [
                Container(
                  height: widget.height * 0.02,
                  width: widget.width * 0.14,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                SizedBox(
                  width: widget.width * 0.01,
                ),
                Text(
                  "Salary ",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  "upto ₹15000 / month",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  width: widget.width * 0.040,
                ),
                if (widget.verticall == false)
                  Icon(
                    Icons.bookmark,
                    color: Colors.blue[100],
                  )
              ],
            ),
            SizedBox(
              height: widget.height * 0.005,
            ),
            Container(
                child: Text("2+ Years Experience",
                    style: TextStyle(fontSize: 10))),
            SizedBox(
              height: widget.height * 0.02,
            ),
            Row(
              children: [
                Text("Badonia & Sons",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: widget.width * 0.2,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: widget.height * 0.023,
                    width: widget.width * 0.14,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Text("Apply Now",
                          style: TextStyle(fontSize: 8, color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
            Text(
              "Civil lines Sagar",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ));
  }
}
