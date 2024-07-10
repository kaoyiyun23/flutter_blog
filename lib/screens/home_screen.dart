import 'package:flutter/material.dart'; //Flutter核心套件

//Flutter渲染畫面的思維是萬物皆為Widget
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold是Flutter預設的Widget，就像一張大畫布，裡面可以承載多種不同的Widget
    return Scaffold(
      //設置了Container，設定他的大小與顏色，並嵌入了Text，Text有一個參數可以調整字體大小
      /* body: Container(
        width: 500,
        height: 500,
        color: Colors.blue,
        child: Text(
          "個人首頁粗搞",
          style: TextStyle(fontSize: 30),
        ),
      ) */

      //希望在畫布內垂直擺放Widget，設置了Column，並置入3個Widget在Children參數內
      /* body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Text(
              "大頭照預留區",
              style: TextStyle(fontSize: 30),
            )
          ),
          Container(
            color: Colors.red,
            child: Text(
              "簡介",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Text(
              "座右銘",
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ) */

      /* body: Column(
        children: [
          //Flutter是有預設最大畫面長寬的，即為該視窗的大小，如果Widget尺寸超過會發生錯誤
          //為了讓他們可以按比例擠在一個視窗內，可以透過Expanded再封裝
          //Expanded會統計並按照設定比例在螢幕上分配尺寸大小
          Expanded(
            child: Container(
              width: 500,
              height: 500,
              color: Colors.blue,
              child: Text(
                "大頭照預留區",
                style: TextStyle(fontSize: 30),
              )
            )
          ),
          Expanded(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Text(
                "簡介",
                style: TextStyle(fontSize: 30),
              )
            )
          ),
           Expanded(
            child: Container(
              color: Colors.amber,
              child: Text(
                "座右銘",
                style: TextStyle(fontSize: 30),
              )
            )
          ),
        ]
      ) */

      //調整長度後，可以讓該部件超過畫面，超過的部分以滾輪檢視
      /* body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Text(
                "大頭照預留區",
                style: TextStyle(fontSize: 30),
              )
            ),
            Container(
              color: Colors.red,
              child: Text(
                "簡介",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              color: Colors.amber,
              child: Text(
                "座右銘",
                style: TextStyle(fontSize: 30),
              ),
            )
          ]
        ) 
      ) */

      //Widget邊界內縮
      //margin就是與父Widget以內縮的方式保持距離
      /* body: Container(
        margin: EdgeInsets.all(20),
        color: Colors.blue,
        child: Container(
          margin: EdgeInsets.all(20),
          color: Colors.red,
          child: Container(
            margin: EdgeInsets.all(20),
            color: Colors.black,
          ),
        ),
      ), */
      
      //父Widget與子Widget之間的關係
      body: Container(
        alignment: Alignment.topCenter,
        width: 500,
        height: 500,
        margin: EdgeInsets.all(20),
        color: Colors.blue,
        child: Container(
          alignment: Alignment.bottomRight,
          width: 200,
          height: 200,
          margin: EdgeInsets.all(20),
          color: Colors.red,
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(20),
            color: Colors.black,
          ),
        ),
      ),


    );
  }
}