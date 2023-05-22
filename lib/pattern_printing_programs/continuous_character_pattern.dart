// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ContinuousCharacterPattern extends StatefulWidget {
  const ContinuousCharacterPattern({super.key});

  @override
  _ContinuousCharacterPatternState createState() => _ContinuousCharacterPatternState();
}

class _ContinuousCharacterPatternState extends State<ContinuousCharacterPattern> {

  TextEditingController inputController = TextEditingController();
  String characterString = '';

  isBuildCharacterPattern()
  {
    String inputString = inputController.text.toUpperCase();
    String tempCharacterString = '';

    for (int i = 0; i < inputString.length; i++)
    {
      for (int j = 0; j <= i; j++)
      {
        tempCharacterString += inputString[j];
      }
    }
    setState(() {
      characterString = tempCharacterString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Continuous Character pattern'),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              decoration: const InputDecoration(
                hintText: 'Enter a string',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isBuildCharacterPattern,
              child: const Text('Build Continuous Character Pattern'),
            ),
            const SizedBox(height: 20),
            Text(characterString, style: const TextStyle(fontSize: 24),),
          ],
        ),
      ),
    );
  }
}
