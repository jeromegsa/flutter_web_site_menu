import 'package:flutter/material.dart';
import 'package:flutter_web_site/nav_bar.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us "),
      ),
      drawer: NavBar(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            "Nous sommes une association de sorciers 🦉 chargés de vous dénicher des maris ou femmes de nuits selon votre préférence !",
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
