import 'package:flutter/material.dart';

class detailsscreen extends StatefulWidget {
  final List<String> students;
  const detailsscreen({super.key, required this.students});

  @override
  State<detailsscreen> createState() => _detailsscreenState();
}

class _detailsscreenState extends State<detailsscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("detailsscreen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.students.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.person,),
                  title:
                  Text(widget.students[index],),

                );
              },
            ),
         ),
        ],
      ),
    );
  }
}