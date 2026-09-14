import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class apiget extends StatefulWidget {
  const apiget({super.key});

  @override
  State<apiget> createState() => _apigetState();
}

class _apigetState extends State<apiget> {
  List users = [];

  Future<void> getusers() async {
    final response = await http.get(
        Uri.parse("https://dummyjson.com/products"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      setState(() {
        users = data["products"];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getusers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api fetch"),
      ),
      body:  Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: Image.network(
                      users[index]["thumbnail"],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(users[index]["title"]),
                    subtitle: Text(users[index]["category"]),
                    trailing: Text(
                      "\$${users[index]["price"]}",
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
