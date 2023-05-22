import 'package:flutter/material.dart';

class PrimeNumber extends StatefulWidget {
  const PrimeNumber({Key? key}) : super(key: key);

  @override
  State<PrimeNumber> createState() => _PrimeNumberState();
}
TextEditingController num1controller = TextEditingController();

class _PrimeNumberState extends State<PrimeNumber> {

  bool? isPrime;
  isPrimeFun(int no)
  {
    bool flag = false;
    for(int i = 2 ; i< no/2 ; i++)
      {
        if(no % i == 0)
          {
            flag =true;
            break;
          }
      }
    if(flag)
      {
        isPrime = false;
      }
    else{
      isPrime = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          const SizedBox(height: 50,),
          const Text("program to check prime number."),
          const SizedBox(height: 50,),
          TextFormField(controller: num1controller),
          const SizedBox(height: 50,),
          ElevatedButton(onPressed: () {
            int number = int.parse(num1controller.text);
            setState(() {
              isPrimeFun(number);
             });
            },
              child: const Text('Clicked')),
          const SizedBox(height: 20,),
          if(isPrime == true)
            Text("${num1controller.text} is prime no")
          else if(isPrime == false)
            Text("${num1controller.text} is not a prime no")
          


        ],
      )),
    );
  }
}
