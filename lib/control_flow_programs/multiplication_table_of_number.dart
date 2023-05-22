// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MultiplicationTable extends StatefulWidget {
  const MultiplicationTable({super.key});

  @override
  _MultiplicationTableState createState() => _MultiplicationTableState();
}

class _MultiplicationTableState extends State<MultiplicationTable> {

  TextEditingController numberController = TextEditingController();
  List<String> table = [];

  isGenerateTable()
  {
    table.clear();
    int number = int.parse(numberController.text);
    for (int i = 1; i <= 10; i++)
    {
      int result = number * i;
      table.add('$number x $i = $result');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplication Table'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: numberController,
                decoration: const InputDecoration(hintText: 'Enter a Number',),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: isGenerateTable,
                child: const Text('Generate Table'),
              ),
              const SizedBox(height: 20),
              Column(
                children: List.generate(table.length, (index) => Text(table[index],style: const TextStyle(fontSize: 20),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}