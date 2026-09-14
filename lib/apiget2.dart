import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:partice_ptojects/apiget3.dart';

class ApiGet extends StatefulWidget {
  const ApiGet({super.key});

  @override
  State<ApiGet> createState() => _ApiGetState();
}

class _ApiGetState extends State<ApiGet> {
  List products = [];

  Future<void> getUsers() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      setState(() {
        products = data['products'];
      });
    }
  }

  @override
  void initState() {
    super.initState();

    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: ListView.builder(
            itemCount: products.length,

            itemBuilder: (context, index) {
              final product = products[index];

              return Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),

                child: ListTile(

                  leading: Image.network(
                    product['thumbnail'],
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,


                  ),

                  title: Text(
                    product['title'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  subtitle: Text(
                    product['category'].toString(),
                  ),

                  trailing: Text(
                    '\$${product['price']}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                  onTap: () {
                    print("PRODUCT CLICKED");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => apiget3(
                          data: product,
                        ),
                      ),
                    );
                  },


                ),
              );
            },
          ),
        ),
      ),
    );
  }
}