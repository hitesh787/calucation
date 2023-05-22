// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class FactorDisplay extends StatefulWidget {
  const FactorDisplay({super.key});

  @override
  _FactorDisplayState createState() => _FactorDisplayState();
}

class _FactorDisplayState extends State<FactorDisplay> {
  int _number = 0;
  List<int> factors = [];

  isCalculateFactors()
  {
    setState(() {
      factors = [];
      for(int i =1;i<=_number;i++){
        if(_number % i == 0){
          factors.add(i);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factor Display'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter a natural number:',
              ),
              onChanged: (value) {
                setState(() {
                  _number = int.parse(value);
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: isCalculateFactors,
              child: const Text('Calculate Factors'),
            ),
            const SizedBox(height: 16.0),
            Text('Factors of $_number:',style: const TextStyle(fontSize: 18.0),),
            Text(factors.join(', '),style: const TextStyle(fontSize: 18.0),),
          ],
        ),
      ),
    );
  }
}
