// // ignore_for_file: library_private_types_in_public_api
//
// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// class ArmstrongScreen extends StatefulWidget {
//   const ArmstrongScreen({super.key});
//
//   @override
//   _ArmstrongScreenState createState() => _ArmstrongScreenState();
// }
//
// class _ArmstrongScreenState extends State<ArmstrongScreen> {
//   int _number = 0;
//
//   bool isArmstrong(int n) {
//     String numberString = n.toString();
//     int? sum = 0;
//     for (int i = 0; i < numberString.length; i++) {
//       int digit = int.parse(numberString[i]);
//       sum = (sum! + (digit * digit * digit));
//     }
//     if (sum == n) {
//       return true;
//     } else {
//       return false;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Armstrong Number Checker'),
//         ),
//         body: Column(
//             children: [
//               TextField(
//                 keyboardType: TextInputType.number,
//                 onChanged: (value) {
//                   setState(() {
//                     _number = int.tryParse(value) ?? 0;
//                   });
//                 },
//                 decoration: const InputDecoration(
//                   labelText: 'Enter a number',),),
//               const SizedBox(height: 20),
//               Text('$_number ${isArmstrong(_number)
//                   ? "is"
//                   : "is not"} an Armstrong number',)
//             ]));
//   }
//
// }