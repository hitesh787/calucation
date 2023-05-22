// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class PalindromeChecker extends StatefulWidget {
  const PalindromeChecker({super.key});

  @override
  _PalindromeCheckerState createState() => _PalindromeCheckerState();
}

class _PalindromeCheckerState extends State<PalindromeChecker> {
  final TextEditingController _controller = TextEditingController();
  String result = '';

  isCheckPalindrome(String text) {
    int temp,r;
    int number = int.tryParse(text)!;
    temp = number;
    int sum = 0;

    while(number > 0)
    {
      r = number % 10;
      sum = r+(sum * 10);
      number = number ~/ 10;
    }
    if (temp==sum) {
      setState(() {result = '$number is an Palindrome number.';});
    } else {
      setState(() {result = '$number is not an Palindrome number.';});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palindrome Checker'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: 'Enter a number'),
            onChanged: (text) => isCheckPalindrome(text),
          ),
          const SizedBox(height: 16.0),
          // ElevatedButton(
          //   onPressed: isCheckPalindrome,
          //   child: const Text('Check Palindrome'),
          // ),
          const SizedBox(height: 16.0),
          Text(result)
        ],
      ),
    );
  }
}
