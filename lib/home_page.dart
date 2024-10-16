import 'package:flutter/material.dart';
import 'package:flutter_web_site/nav_bar.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {
      "title": "Service 1",
      "icon": Icons.ac_unit, // Utilisation directe d'IconData
      "description": "Description of service 1.",
    },
    {
      "title": "Service 2",
      "icon": Icons.access_alarm,
      "description": "Description of service 2.",
    },
    {
      "title": "Service 3",
      "icon": Icons.accessibility,
      "description": "Description of service 3.",
    },
    {
      "title": "Service 4",
      "icon": Icons.account_balance,
      "description": "Description of service 4.",
    },
    {
      "title": "Service 5",
      "icon": Icons.account_box,
      "description": "Description of service 5.",
    },
    {
      "title": "Service 6",
      "icon": Icons.account_circle,
      "description": "Description of service 6.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            color: Color(0xFF4B0082),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 252, 188, 194),
      ),
      drawer: NavBar(),
      body: Center(
        child: Column(
          children: [
            const Text(
              "We're welcome!",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 50.0),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 cards per row
                  childAspectRatio: 0.8, // Aspect ratio for cards
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          services[index]['icon'], // Utilisation de l'icône directement
                          size: 40,
                          color: const Color(0xFF4B0082),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          services[index]['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            services[index]['description']!,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: const Text("Gooooo!"),
            ),
          ],
        ),
      ),
    );
  }
}
