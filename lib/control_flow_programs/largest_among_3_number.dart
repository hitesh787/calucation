// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class FindLargest extends StatefulWidget {
  const FindLargest({super.key});

  @override
  _FindLargestState createState() => _FindLargestState();
}

class _FindLargestState extends State<FindLargest> {

  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();
  int largestNumber = 0;

 isFindLargestNumber()
  {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    int num3 = int.parse(num3Controller.text);

    if (num1 >= num2 && num1 >= num3) {
      largestNumber = num1;
    } else if (num2 >= num1 && num2 >= num3) {
      largestNumber = num2;
    } else {
      largestNumber = num3;
    }
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Largest Among 3 Numbers'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 50,),
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Enter Number 1',),
              ),
              TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Enter Number 2',),
              ),
              TextField(
                controller: num3Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Enter Number 3',),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: isFindLargestNumber,
                child: const Text('Find Largest Number'),),
              const SizedBox(height: 16.0),
              Text('Largest Number is  $largestNumber', style: const TextStyle(fontSize: 25,),),
            ],
          ),
        ),
      ),
    );
  }
}
