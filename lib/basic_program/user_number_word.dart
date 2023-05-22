import 'package:flutter/material.dart';

class WordAndNumberUser extends StatefulWidget {
  const WordAndNumberUser({Key? key}) : super(key: key);

  @override
  State<WordAndNumberUser> createState() => _WordAndNumberUserState();
}

TextEditingController myController = TextEditingController();


class _WordAndNumberUserState extends State<WordAndNumberUser> {

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Basic Program'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: myController,
                    decoration: const InputDecoration(
                      labelText: 'Enter your name and number',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text('Submit'),
                  ),
                  Text('Hello, ${myController.text} .',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ],
              ),
            ),),);
  }
}
