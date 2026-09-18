import 'package:flutter/material.dart';

class apiget3 extends StatefulWidget {
  final Map<String, dynamic> data;
  const apiget3({super.key,required this.data});

  @override
  State<apiget3> createState() => _apiget3State();
}

class _apiget3State extends State<apiget3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product details"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              widget.data['thumbnail'].toString(),

              width: double.infinity,
              height: 300,

              fit: BoxFit.contain,

            ),
            SizedBox(height:20 ,),
            Text(widget.data['title'].toString(),),

            SizedBox(height: 10),

            Text('\$${widget.data['price']}',),
            SizedBox(height: 10),

            Text('Category: ${widget.data['category']}',),

            SizedBox(height: 10),

            Text('Brand: ${widget.data['brand']}',),

            SizedBox(height: 10),

            Text('Rating: ${widget.data['rating']}',),

            SizedBox(height: 10),

            Text('Stock: ${widget.data['stock']}',),

            SizedBox(height: 10),

            Text("Description"),
            SizedBox(height: 10),

            Text(widget.data['description'].toString(),),


            SizedBox(height: 10),

            Text('Shipping: ${widget.data['shippingInformation']}',),


            SizedBox(height: 10),

            Text('Warranty: ${widget.data['warrantyInformation']}',),


            SizedBox(height: 10),

            Text( 'Availability: ${widget.data['availabilityStatus']}',),







          ],
        ),

      )




    );
  }
}
