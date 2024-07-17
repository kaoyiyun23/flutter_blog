import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/common_drawer.dart'; //Flutter核心套件

class AwsSaaClassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                child: Image(
                  width: 500,
                  height: 500,
                  image: AssetImage("assets/aws_saa_class.png"),
                ),
              ),
              Container(
                child: Text(
                  "大話AWS雲端架構",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("跳轉前頁"),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Text("官方首頁"),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}