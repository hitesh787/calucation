// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';


class RectangleCalculator extends StatefulWidget {
  const RectangleCalculator({super.key});

  @override
  _RectangleCalculatorState createState() => _RectangleCalculatorState();
}

class _RectangleCalculatorState extends State<RectangleCalculator> {

  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();

  double _area = 0.0;
  double _perimeter = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rectangle Area and Perimeter Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 100,),
            TextField(
              controller: lengthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Length',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: widthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Width',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
                double length = double.tryParse(lengthController.text)!;
                double width = double.tryParse(widthController.text)!;
                setState(() {
                  _area = length * width;
                  _perimeter = 2 * (length + width);
                },
                );
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16.0),
            Text('Area: $_area',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 16.0),
            Text('Perimeter: $_perimeter',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
