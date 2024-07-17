import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/common_drawer.dart'; //Flutter核心套件

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
      /* body: Container(
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
      ), */

      //設置文字按鈕跳轉到第二頁
      //跳轉分頁要使用Flutter預設物件Navigator
      //pushNamed方法填入參數context和要跳轉的分頁
      /* body: TextButton(
        child: Text("切換到第二頁"),
        onPressed: () {
          Navigator.pushNamed(context, "/second");
        },
      ), */

      //為了展示Drawer側邊欄，要建置一個AppBar在畫面的頂端，並將其放入Scaffold的appBar參數
      //進一步調度CommonDrawer的getDrawer函數，生成Drawer，放入Scaffold的drawer參數
      /* appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: TextButton(
        child: Text("切換到第二頁"),
        onPressed: () {
          Navigator.pushNamed(context, "/second");
        },
      ), */

      //設定空標題列
      appBar: AppBar(),
      //引入先前設定的側邊欄
      drawer: CommonDrawer.getDrawer(context),
      //單一滾動檢視，引入更多組件
      body: SingleChildScrollView(
        //放入一個Container，留下未來調整的彈性
        child: Container(
          //排版置中
          alignment: Alignment.center,
          child: Column(
            //安排需要放進去的組件
            children: [
              Container(
                child: Text(
                  "雲育鏈Line@ QRCode",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              //放入圖片，透過AssetImage指定放在assets資料夾的cxcxc_line.png
              Container(
                child: Image(image: AssetImage("assets/cxcxc_line.png"),),
              ),
              Container(
                child: Text("掃了不會有好康"),
              ),
              //放入一個文字按鈕，設定點擊後的頁面導向
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/cloud-architecture-guide");
                  },
                  child: Text("單身神功秘笈"),
                ),
              ),
              //放入一個文字按鈕，設定點擊後的頁面導向
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
