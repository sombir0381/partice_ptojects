
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:partice_ptojects/Providers/colourChange.dart';

class colourChange extends StatefulWidget {
  const colourChange({super.key});

  @override
  State<colourChange> createState() => _colourChangeState();
}

class _colourChangeState extends State<colourChange> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<colourChangeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Colour Change"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Selected Colour: ${provider.SelectedColour}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: provider.selectedColor,
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                context.read<colourChangeProvider>().changeRed();
              },
              child: const Text("Red"),
            ),

            ElevatedButton(
              onPressed: () {
                context.read<colourChangeProvider>().changeGreen();
              },
              child: const Text("Green"),
            ),

            ElevatedButton(
              onPressed: () {
                context.read<colourChangeProvider>().changeBlue();
              },
              child: const Text("Blue"),
            ),

            ElevatedButton(
              onPressed: () {
                context.read<colourChangeProvider>().changeYellow();
              },
              child: const Text("Yellow"),
            ),
          ],
        ),
      ),
    );
  }
}
