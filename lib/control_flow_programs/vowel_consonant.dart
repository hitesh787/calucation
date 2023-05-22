// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class VowelConsonant extends StatefulWidget {
  const VowelConsonant({super.key});

  @override
  _VowelConsonantState createState() => _VowelConsonantState();
}

class _VowelConsonantState extends State<VowelConsonant> {

  TextEditingController charController = TextEditingController();
  String result = '';

  isCheckVowelOrConsonant()
  {
    String char = charController.text.toLowerCase();
    if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
      result = 'Vowel';
    } else {
      result = 'Consonant';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vowel or Consonant Checker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: charController,
                maxLength: 1,
                decoration: const InputDecoration(
                  hintText: 'Enter a Character',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: isCheckVowelOrConsonant,
                child: const Text('Check'),
              ),
              const SizedBox(height: 16.0),
              Text('Result: $result', style: const TextStyle(fontSize: 24.0),),
            ],
          ),
        ),
      ),
    );
  }
}
