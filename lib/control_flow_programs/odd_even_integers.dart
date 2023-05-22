// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';


class EvenOrOdd extends StatefulWidget {
  const EvenOrOdd({super.key});

  @override
  _EvenOrOddState createState() => _EvenOrOddState();
}

class _EvenOrOddState extends State<EvenOrOdd> {

  final numberController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Even or Odd Checker'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value){},
            ),
            const SizedBox(height: 16.0),
            Text('Even,Odd',style: const TextStyle(fontSize: 24),),
          ],
        ),
      ),
    );
  }
}









//int m = 0;
// int? number = int.tryParse(numberController.text);
// // m=(number!/2)! as int;
// bool even = (number! % 2 == 0);
// setState(() {
//   isEven = even;
// });


// onChanged: (value) {
// if (value.isEmpty) {
// setState(() {
// isEven = false;
// });
// } else {
// isCheckEvenOrOdd();
// }
// },