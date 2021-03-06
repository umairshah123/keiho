import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keiho/Constant.dart';
import 'package:keiho/DetailsScreen.dart';
import 'package:keiho/Reminder_Details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      drawer: kAppDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                style: kTextFieldStyle,
                decoration: InputDecoration(
                  hintText: "Enter Your Title",
                  hintStyle: kHintStyle,
                  labelText: "Title",
                  labelStyle: kLabelStyle,
                  filled: true,
                  fillColor: kWhiteColor,
                  border: InputBorder.none,
                ),
                onChanged: (text) {
                  title = text;
                },
                obscureText: false,
              ),
            ),
            //HomeTextFields(hintText: "Enter Your Title", label: "Title"),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                style: kTextFieldStyle,
                decoration: InputDecoration(
                  hintText: "Enter Your Description",
                  hintStyle: kHintStyle,
                  labelText: "Description",
                  labelStyle: kLabelStyle,
                  filled: true,
                  fillColor: kWhiteColor,
                  border: InputBorder.none,
                ),
                onChanged: (text) {
                  description = text;
                },
                obscureText: false,
              ),
            ),
            //HomeTextFields(
            //  hintText: "Enter Your Description", label: "Description"),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  children: [
                    Container(
                      height: 50.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: kGoldenColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.list_alt_rounded,
                          color: kWhiteColor,
                          size: 35.0,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ReminderDetail(),
                            ),
                          );
                        },
                      ),
                    ),
                    //ButtonContainer(Icons.list_alt_rounded),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: kGoldenColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          color: kWhiteColor,
                          size: 35.0,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  title: title, description: description),
                            ),
                          );
                        },
                      ),
                    ),
                    //ButtonContainer(Icons.arrow_forward_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container ButtonContainer(IconData icon) {
    return Container(
      height: 50.0,
      width: 80.0,
      decoration: BoxDecoration(
        color: kGoldenColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: kWhiteColor,
          size: 35.0,
        ),
      ),
    );
  }

  Padding HomeTextFields({
    String hintText,
    String label,
  }) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        style: kTextFieldStyle,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: kHintStyle,
          labelText: label,
          labelStyle: kLabelStyle,
          filled: true,
          fillColor: kWhiteColor,
          border: InputBorder.none,
        ),
        obscureText: false,
      ),
    );
  }
}
