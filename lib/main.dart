import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_init.dart';

void main() {
  runApp(MyApp());

  //Flutter沉浸式状态栏，Platform.isAndroid 判断是否是Android手机
  if (Platform.isAndroid) {
    // setSystemUIOverlayStyle:用来设置状态栏顶部和底部样式
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 异步UI更新
    return FutureBuilder(
      future: AppInit.init(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {

        return Text("");
      },
    );
  }
}
