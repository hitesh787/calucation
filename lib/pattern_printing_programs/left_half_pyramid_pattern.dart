// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class LeftHalfPyramidScreen extends StatefulWidget {
  const LeftHalfPyramidScreen({super.key});

  @override
  _LeftHalfPyramidScreenState createState() => _LeftHalfPyramidScreenState();
}

class _LeftHalfPyramidScreenState extends State<LeftHalfPyramidScreen> {

  int rows = 0;
  String pattern = '';

  isGeneratePattern()
  {

    // Right Pattern
    // setState(() {
    //   pattern = '';
    //   for(int i = 1;i<=rows ; i++)
    //   {
    //     for(int j=1;j<=i;j++)
    //     {
    //       pattern += ' * ';
    //     }
    //     pattern += '\n';
    //   }
    // });


    // Left Pattern
    // setState(() {
    //   pattern = '';
    //   for(int i=1; i<rows; i++)
    //   {
    //     for(int j=i;j<5;j++)
    //     {
    //       pattern += '   ';
    //     }
    //     for(int k=1;k<=i;k++)
    //     {
    //       pattern += '* ';
    //     }
    //     pattern += '\n';
    //   }
    // });


    // Full Pattern

    setState(() {
      pattern = '';
      for (int i = 1; i <= rows; i++)
      {
        for (int j = 1; j <= rows - i; j++)
        {
          pattern +='  ';
        }
        for (int k = 1; k <= 2 * i - 1; k++)
        {
          pattern += ' *';
        }
        pattern += '\n';
      }
    });


    // Inverted Pyramid
    // setState(() {
    //   pattern = '';
    //   for (int i = rows; i >= 1; i--)
    //   {
    //     for (int k = 1; k <= 2 * i - 1; k++)
    //     {
    //       pattern +='* ';
    //     }
    //     pattern += '\n';
    //   }
    // });


    // Triangle  Pattern
    //     pattern = '';
    //     setState(() {
    //       pattern = '';
    //       for (int i = 1; i <= rows; i++)
    //       {
    //         for (int j = 1; j <= i; j++)
    //         {
    //           pattern +=' * ';
    //         }
    //         pattern += '\n';
    //       }
    //     });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Star Pyramid Pattern'),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Number of Rows'),
              onChanged: (value) {rows = int.tryParse(value)!;},
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: isGeneratePattern,
              child: const Text('Generate Pattern'),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                child: Center(child: Text(pattern,style: const TextStyle(fontSize: 25),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
