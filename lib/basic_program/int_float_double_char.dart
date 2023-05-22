import 'dart:convert';
import 'package:flutter/material.dart';


class IntFloatDoubleChar extends StatefulWidget {
  const IntFloatDoubleChar({super.key});

  @override
  State<StatefulWidget> createState() => _IntFloatDoubleCharState();
}

class _IntFloatDoubleCharState extends State<IntFloatDoubleChar> {

  String _input = '';
  int _size = 0;

  void _onTextChanged(String value) {
    setState(() {
      _input = value;
      _size = utf8.encode(value).length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data Type Size Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: _onTextChanged,
                decoration: const InputDecoration(
                  labelText: 'Enter a value',
                ),
              ),
              const SizedBox(height: 16),
              Text('Size of input: $_size bytes',style: const TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
