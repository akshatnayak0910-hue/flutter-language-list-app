import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LanguageListPage(),
    );
  }
}

class LanguageListPage extends StatelessWidget {
  const LanguageListPage({super.key});

  // Sample data
  final List<Map<String, String>> languages = const [
    {
      "name": "Dart",
      "image": "https://cdn-icons-png.flaticon.com/512/5968/5968705.png"
    },
    {
      "name": "Java",
      "image": "https://cdn-icons-png.flaticon.com/512/226/226777.png"
    },
    {
      "name": "Python",
      "image": "https://cdn-icons-png.flaticon.com/512/5968/5968350.png"
    },
    {
      "name": "C++",
      "image": "https://cdn-icons-png.flaticon.com/512/6132/6132222.png"
    },
    {
      "name": "JavaScript",
      "image": "https://cdn-icons-png.flaticon.com/512/5968/5968292.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text(
          "Programming Languages",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        elevation: 3,
      ),

      body: Stack(
        children: [
          ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: languages.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 6),
                  leading: Image.network(
                    languages[index]["image"]!,
                    width: 42,
                    height: 42,
                  ),
                  title: Text(
                    languages[index]["name"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.indigo,
                  ),
                  onTap: () {},
                ),
              );
            },
          ),

          const Positioned(
            bottom: 10,
            right: 15,
            child: Text(
              "~ Akshat Nayak",
              style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}