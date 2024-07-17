import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/common_drawer.dart'; //Flutter核心套件

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage("assets/cloud_architecture.png"),
                ),
              ),
              Container(
                child: Text(
                  "大話aws雲端架構",
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
                    Navigator.pushNamed(context, "/aws-saa-class");
                  },
                  child: Text("未來技術趨勢"),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
  
}