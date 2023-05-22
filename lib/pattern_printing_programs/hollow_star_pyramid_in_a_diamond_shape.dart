// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';


class HollowStarDiamondPyramid extends StatefulWidget {
  const HollowStarDiamondPyramid({super.key});

  @override
  _HollowStarDiamondPyramidState createState() =>
      _HollowStarDiamondPyramidState();
}

class _HollowStarDiamondPyramidState extends State<HollowStarDiamondPyramid> {

  TextEditingController inputController = TextEditingController();
  String hollowStarDiamondPyramidString = '';

  isBuildHollowStarDiamondPyramid()
  {
    String inputString = inputController.text;
    int inputInt = int.tryParse(inputString)!;
    String tempHollowStarDiamondPyramidString = '';

    //Top Patter Star
    for (int i = 1; i <= inputInt; i++)
    {
      for (int j = 1; j <= inputInt - i; j++)
      {
        tempHollowStarDiamondPyramidString += ' ';
      }
      for (int k = 1; k <= i * 2 - 1; k++)
      {
        if (k == 1 || k == i * 2 - 1)
        {
          tempHollowStarDiamondPyramidString += '*';
        } else
        {
          tempHollowStarDiamondPyramidString += ' ';
        }
      }
      tempHollowStarDiamondPyramidString += '\n';
    }

    //Bottom Patter Star
    for (int i = inputInt - 1; i >= 1; i--)
    {
      for (int j = 1; j <= inputInt - i; j++)
      {
        tempHollowStarDiamondPyramidString += ' ';
      }
      for (int k = 1; k <= i * 2 - 1; k++)
      {
        if (k == 1 || k == i * 2 - 1)
        {
          tempHollowStarDiamondPyramidString  +=  '*';
        } else
        {
          tempHollowStarDiamondPyramidString  +=  ' ';
        }
      }
      tempHollowStarDiamondPyramidString  +=  '\n';
    }
    setState(() {hollowStarDiamondPyramidString = tempHollowStarDiamondPyramidString;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hollow Star Pyramid In a Diamond Shape'),),
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
                onPressed: isBuildHollowStarDiamondPyramid,
                child: const Text('Build Hollow Star Diamond Pyramid'),
              ),
              const SizedBox(height: 20),
              Text(
                hollowStarDiamondPyramidString,
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
