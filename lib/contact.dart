import 'package:flutter/material.dart';
import 'package:flutter_web_site/nav_bar.dart';

class Contact extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us "),
      ),
      drawer: NavBar(),
      body: const Padding(padding: EdgeInsets.all(16.0), child: Center(child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.email),
              Text("Email: Azémandoawa@hèvi.bj"),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Icon(Icons.phone),
              Text("+22960606060"),
            ],
          )
        ],
      )
      ,),),
    );
    
  }
}