// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class FindLCM extends StatefulWidget {
  const FindLCM({super.key});

  @override
  _FindLCMState createState() => _FindLCMState();
}

class _FindLCMState extends State<FindLCM> {

  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  int lcm = 1;

  isCalculateLCM()
  {
    int number1 = int.parse(number1Controller.text);
    int number2 = int.parse(number2Controller.text);
    int greater = number1 > number2 ? number1 : number2;

    while (true)
    {
      if (greater % number1 == 0 && greater % number2 == 0)
            {
            lcm = greater;
            setState(() {});
            break;
          }
      greater++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find LCM'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: number1Controller,
                decoration: const InputDecoration(
                  hintText: 'Enter First Number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: number2Controller,
                decoration: const InputDecoration(
                  hintText: 'Enter Second Number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: isCalculateLCM,
                child: const Text('Find LCM'),
              ),
              const SizedBox(height: 16.0),
              if (lcm != 1)
                Text(
                  'The LCM of ${number1Controller.text} and ${number2Controller.text} is $lcm',
                  style: const TextStyle(fontSize: 24.0),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
