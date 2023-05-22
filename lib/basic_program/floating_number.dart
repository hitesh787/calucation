import 'package:flutter/material.dart';

class FloatingNumber extends StatefulWidget {
  const FloatingNumber({Key? key}) : super(key: key);

  @override
  State<FloatingNumber> createState() => _FloatingNumberState();
}
TextEditingController myController1 = TextEditingController();
TextEditingController myController2 = TextEditingController();
String result = '0';

class _FloatingNumberState extends State<FloatingNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Program'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: myController1,
                decoration: const InputDecoration(
                  labelText: 'Enter number 1',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: myController2,
                decoration: const InputDecoration(
                  labelText: 'Enter number 2',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    double sum = double.parse(myController1.text) + double.parse(myController2.text);
                    result = sum.toString();
                  });
                },
                child: const Text('Submit'),
              ),
              Text('Hello, $result',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ],
          ),
        ),),);
  }
}
