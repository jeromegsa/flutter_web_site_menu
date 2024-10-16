import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
        const DrawerHeader(
            decoration: BoxDecoration( color: Color.fromARGB(255, 252, 188, 194)),
            child: Text(
              "Menu",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About"),
            onTap: () {
              Navigator.pushNamed(context, "/about");
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text("Contact us"),
            onTap: () {
              Navigator.pushNamed(context, "/contact");
            },
          ),
        ],
      ),
    );
  }
}
