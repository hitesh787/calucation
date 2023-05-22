import 'package:flutter/material.dart';

class ASCIIConvert extends StatefulWidget {
  const ASCIIConvert({super.key});

  @override
  State<StatefulWidget> createState() => _ASCIIConvertState();
}

class _ASCIIConvertState extends State<ASCIIConvert> {
  //Alphabet Converted
  String _alphabetInput = '';
  String _convertedAscii = '';

  //ASCII Converted
  String _convertedChar = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ASCII Converter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (String value){
                  setState(() {
                    _alphabetInput = value;
                    _convertedAscii = '${_alphabetInput.codeUnitAt(0)}';
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Enter an Alphabet ',
                ),
              ),
              const SizedBox(height: 16),
              Text('ASCII Number: $_convertedAscii',style: const TextStyle(fontSize: 20),),

              const SizedBox(height: 50),

              TextField(
                keyboardType: TextInputType.number,
                onChanged: (String value){
                  setState(() {
                    _convertedChar = String.fromCharCode(int.parse(value));
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Enter an ASCII number',
                ),
              ),
              const SizedBox(height: 16),
              Text('Alphabet Character: $_convertedChar ', style: const TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
