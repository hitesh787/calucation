// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  _PalindromeScreenState createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  final TextEditingController _textController = TextEditingController();
  bool _isPalindrome = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palindrome Checker'),
      ),
      body: Column(
        children: [
          TextField(controller: _textController, decoration: const InputDecoration(labelText: 'Enter a word or number',)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              String input = _textController.text;
              input = input.replaceAll(RegExp(r'\W+'), '').toLowerCase();
              String reversedInput = input.split('').reversed.join('');
              setState(() {_isPalindrome = input == reversedInput;});},
            child: const Text('Check if Palindrome', style: TextStyle(color: Colors.white),),),
          const SizedBox(height: 20),
          Text(_isPalindrome ? 'The input is a palindrome' : 'The input is not a palindrome',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: _isPalindrome ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}