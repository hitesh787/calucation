// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class PowerCalculator extends StatefulWidget {
  const PowerCalculator({super.key});

  @override
  _PowerCalculatorState createState() => _PowerCalculatorState();
}

class _PowerCalculatorState extends State<PowerCalculator> {
  int base = 0;
  int exponent = 0;
  int result = 0;

  isCalculatePower()
  {
    setState(() {
      result = 1;
      for (int i = 0; i < exponent; i++)
      {
        result *= base;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Power Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter the base:',),
              onChanged: (value) {setState(() {base = int.parse(value);});
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter the exponent:',),
              onChanged: (value) {setState(() {exponent = int.parse(value);});
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: isCalculatePower,
              child: const Text('Calculate Power'),
            ),
            const SizedBox(height: 16.0),
            Text('$base to the power of $exponent is $result',style: const TextStyle(fontSize: 18.0),),
          ],
        ),
      ),
    );
  }
}
