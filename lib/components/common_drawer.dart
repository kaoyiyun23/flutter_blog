import 'package:flutter/material.dart'; //Flutter核心套件

class CommonDrawer {
  //類別靜態用法
  //static可讓我們不須創建CommonDrawer物件，即可調度getDrawer函數
  //getDrawer函數
  //調度時需放入Flutter用來記錄頁面結構資訊的BuildContext，而後回傳一個Drawer
  static Drawer getDrawer(BuildContext context) {
    return Drawer(
      //child參數: 可接Column或ListView，官方推薦使用ListView，避免按鍵過多超出畫面而異常
      //Column在使用時須要考慮會操作螢幕
      /* child: ListView(
        children: [
          ListTile(
            title: const Text("首頁"),
            onTap: () {
              //轉發至首頁
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            title: const Text("第二個分頁"),
            onTap: () {
              //轉發至第二頁
              Navigator.pushNamed(context, "/second");
            },
          )
        ],
      ), */

      child: ListView(
        children: [
          ListTile(
            title: const Text("公司官網"),
            onTap: () {
              //轉發至首頁
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            title: const Text("大話AWS雲端搶先看"),
            onTap: () {
              //轉發至大話aws雲端架構頁面
              Navigator.pushNamed(context, "/cloud-architecture-guide");
            },
          ),
          ListTile(
            title: const Text("未來必備的雲端架構師認證"),
            onTap: () {
              //轉發至aws saa課程頁面
              Navigator.pushNamed(context, "/aws-saa-class");
            },
          )
        ],
      ),
    );
  }
}