import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/common_drawer.dart'; //Flutter核心套件

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* body: Text("第二個頁面"), */

      //設置文字按鈕跳轉到首頁
      //跳轉分頁要使用Flutter預設物件Navigator
      //pop方法使用是會跳回上一頁，填入參數context即可
      /* body: TextButton (
        child: Text("跳回首頁"),
        onPressed: () {
          Navigator.pop(context);
        },
      ), */

      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: TextButton(
        child: Text("跳回首頁"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),

    );
  }
}