// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class InvertedHollowStarPyramid extends StatefulWidget {
  const InvertedHollowStarPyramid({super.key});

  @override
  _InvertedHollowStarPyramidState createState() => _InvertedHollowStarPyramidState();
}

class _InvertedHollowStarPyramidState extends State<InvertedHollowStarPyramid> {

  TextEditingController inputController = TextEditingController();
  String invertedHollowStarPyramidString = '';

  isBuildInvertedHollowStarPyramid()
  {
    String inputString = inputController.text;
    int inputInt = int.tryParse(inputString)!;
    String hollowStarPyramid = '';

      for(int i=inputInt;i>=1;i--)
        {
          for(int space=i;space<inputInt;space++)
            {
              hollowStarPyramid += '  ';
            }
          for(int j=1;j<=2*i-1;j++)
            {
              if(i == inputInt || j == 1 || j == 2 * i-1 )
                {
                  hollowStarPyramid += ' *';
                } else
                {
                  hollowStarPyramid += '  ';
                }
            }
          hollowStarPyramid += '\n';
        }
    setState(() {invertedHollowStarPyramidString = hollowStarPyramid;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inverted Hollow Star Pyramid Pattern'),),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: inputController,
                decoration: const InputDecoration(
                  hintText: 'Enter a number',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: isBuildInvertedHollowStarPyramid,
                child: const Text('Build Inverted Hollow Star Pyramid'),
              ),
              const SizedBox(height: 20),
              Text(
                invertedHollowStarPyramidString,
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
