import 'package:flutter/material.dart';

class InvertedPyramid extends StatefulWidget {
  const InvertedPyramid({super.key});

  @override
  _InvertedPyramidState createState() => _InvertedPyramidState();
}

class _InvertedPyramidState extends State<InvertedPyramid> {

  TextEditingController inputController = TextEditingController();
  List<String> pyramidList = [];

  isBuildPyramid() {
    int num = int.parse(inputController.text);

    setState(() {
      pyramidList.clear();
      for (int i = num; i >= 1; i--) {
        String row = '';
        for (int k = 1; k <= 2 * i - 1; k++) {
          row += '* ';
        }
        pyramidList.add(row);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inverted Pyramid'),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: inputController,
              decoration: const InputDecoration(
                hintText: 'Enter a number',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isBuildPyramid,
              child: const Text('Build Pyramid'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: pyramidList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(pyramidList[index],style: const TextStyle(fontSize: 20),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
