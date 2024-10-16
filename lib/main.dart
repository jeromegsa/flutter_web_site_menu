import 'package:flutter/material.dart';
import 'package:flutter_web_site/about.dart';
import 'package:flutter_web_site/contact.dart';
import 'package:flutter_web_site/home_page.dart';

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      routes:{
        "/home":(BuildContext context)=>HomePage(),
        "/about":(BuildContext context)=>About(),
        "/contact":(BuildContext context)=>Contact(),
      },
      debugShowCheckedModeBanner: false,
      title: "AzéApp",
      theme: ThemeData(primarySwatch: Colors.blue),
      // routes:
      home: HomePage(),

    );
  }
}
