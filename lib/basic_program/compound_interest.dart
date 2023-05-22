// ignore_for_file: library_private_types_in_public_api
import 'dart:math';
import 'package:flutter/material.dart';

class CompoundInterest extends StatefulWidget {
  const CompoundInterest({super.key});

  @override
  _CompoundInterestState createState() => _CompoundInterestState();
}

class _CompoundInterestState extends State<CompoundInterest> {

  double principal = 0.0;
  double rate = 0.0;
  double time = 0.0;
  double compoundInterest = 0.0;

  isCompoundInterestState() {
    setState(() {
      compoundInterest = principal * pow((1 + rate / 100), time);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Compound Interest Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Enter Principal Amount',),
                onChanged: (value) {
                  setState(() {
                    principal = double.tryParse(value)!;
                    isCompoundInterestState();
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Enter Rate of Interest',),
                onChanged: (value) {
                  setState(() {
                    rate = double.tryParse(value)!;
                    isCompoundInterestState();
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Enter Time (in years)',),
                onChanged: (value) {
                  setState(() {
                    time = double.tryParse(value)!;
                    isCompoundInterestState();
                  });
                },
              ),
              const SizedBox(height: 16),
              Text('Compound Interest: $compoundInterest',style: const TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }


}
