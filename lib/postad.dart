// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace
import 'package:flutter/material.dart';

class Postad extends StatefulWidget {
  const Postad({Key? key}) : super(key: key);

  @override
  _PostadState createState() => _PostadState();
}

class _PostadState extends State<Postad> {
  late double deviceheight;
  late double devicewidth;
  @override
  Widget build(BuildContext context) {
    deviceheight = MediaQuery.of(context).size.height;
    devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: deviceheight,
          width: devicewidth,
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: (deviceheight * 0.08),
              ),
              Container(
                width: devicewidth * 0.4,
                child: const Text(
                  "Post An,",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                width: devicewidth * 0.5,
                child: const Text(
                  "Advertisment.",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              Container(
                  height: deviceheight * 0.28,
                  alignment: Alignment.center,
                  child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/c77c/5470/c6fae6cae2e1ec1a273386f429af7973?Expires=1640563200&Signature=Zz8J6NjvW3Ycg-RVIULIeNxOmCATzYaDFd6Tc-1jl-rtM11X4dHAkV6CvQUzZfwEBCIAtAA57Y5bwUVCQZnucyx39JjoRhpV~H35rHjiqeirQ5Un4pWJK-J2NkAD5Unx9uWw5FOim1anHJTlhqDeGy03bTx4P4wYq9D5cvQG-m9Q6gpWQTTzGiaAjRwRg~cwvd6iavwOo6O4TJG67rLbM0mTNbjxRZXinnd~JrA6CEhEAFi56s-MLzH~GFeIH98IIyTuUWQlcDhhP9RJWEgA-ITt5~S8yzDo9noout-RIvitgLDT5fycakblWEgn9ysNRpVrQ1D8U8Vhvnjy5XZS~g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA")),
              Text(
                "Reach more Customers and Employers!",
                style: const TextStyle(fontSize: 15),
              ),
              Text(
                "Start by posting Your Service Ad.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Container(
                width: devicewidth * 0.9,
                child: TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide.none),
                    hintText: "Name of Your Service",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Container(
                width: devicewidth * 0.9,
                child: TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide.none),
                      hintText: "Service Area",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.arrow_drop_down)),
                ),
              ),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              Container(
                width: devicewidth * 0.9,
                child: TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide.none),
                      hintText: "Field of Work",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.arrow_drop_down)),
                ),
              ),
              SizedBox(
                height: deviceheight * 0.05,
              ),
              Text(
                  "By Submitting This Advertisement, You Agree To Share Your Contact Details",
                  style: TextStyle(fontSize: 10.5)),
              Text(
                "with Customers and Employers on the Hyre Me Platform.",
                style: TextStyle(fontSize: 10.5),
              ),
              SizedBox(
                height: deviceheight * 0.02,
              ),
              InkWell(
                child: Container(
                  height: deviceheight * 0.06,
                  width: devicewidth * 0.9,
                  color: Colors.redAccent,
                  child: Row(
                    children: [
                      SizedBox(width: devicewidth * 0.02),
                      Text("POST ADVERTISEMENT",
                          style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: devicewidth * 0.4,
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
             onTap: (){}, )
            ],
          ),
        ),
      ),
    );
  }
}
