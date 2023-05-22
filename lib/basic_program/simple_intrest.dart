import 'package:flutter/material.dart';


class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<StatefulWidget> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  double _principal = 0;
  double _rate = 0;
  double _time = 0;
  double _simpleInterest = 0;

  isCalculateSimpleInterest()
  {
    _simpleInterest = (_principal * _rate * _time) / 100;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Interest Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: (String value){
                  setState(() {
                    _principal = double.tryParse(value)!;
                    isCalculateSimpleInterest();
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter the principal amount (P)',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: (String value){
                  setState(() {
                    _rate = double.tryParse(value)!;
                    isCalculateSimpleInterest();
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter the rate of interest (R)',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: (String value){
                  setState(() {
                    _time = double.tryParse(value)!;
                    isCalculateSimpleInterest();
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter the time period in years (T)',
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Simple Interest: $_simpleInterest',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
