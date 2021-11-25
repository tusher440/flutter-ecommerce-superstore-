import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superstore/views/Splash.dart';
import 'package:superstore/views/account.dart';
import 'package:superstore/views/categorytwo.dart';
import 'package:superstore/views/checkoutThree.dart';
import 'package:superstore/views/checkoutone.dart';
import 'package:superstore/views/checkouttwo.dart';
import 'package:superstore/views/contactsone.dart';
import 'package:superstore/views/productthree.dart';
import 'package:superstore/views/producttwo.dart';
import 'package:superstore/views/shoping_cart2.dart';
import 'package:superstore/views/shopping%20cart%203.dart';
import 'package:superstore/views/shopping%20cart1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: 'Open Sans',
      ),
      home: splash()
    );
  }
}

