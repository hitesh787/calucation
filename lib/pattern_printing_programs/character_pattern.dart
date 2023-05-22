// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CharacterPattern extends StatefulWidget {
  const CharacterPattern({super.key});

  @override
  _CharacterPatternState createState() => _CharacterPatternState();
}

class _CharacterPatternState extends State<CharacterPattern> {

  TextEditingController inputController = TextEditingController();
  List<List<String>> characterList = [];

  isBuildCharacterPattern()
  {
    String inputString = inputController.text.toUpperCase();
    List<List<String>> tempCharacterList = [];

    for (int i = 0; i < inputString.length; i++)
    {
      List<String> row = [];
      for (int j = 0; j <= i; j++)
      {
        // row.add(inputString[i]);
        row.add(inputString[j]);
      }
      tempCharacterList.add(row);
    }
    setState(() {characterList = tempCharacterList;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Character pattern'),),
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
              child: const Text('Build Character Pattern'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: characterList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(characterList[index].join(' '),style: const TextStyle(fontSize: 25),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
