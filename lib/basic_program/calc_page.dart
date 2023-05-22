import 'package:flutter/material.dart';

class CaleScreen extends StatefulWidget {
  const CaleScreen({Key? key}) : super(key: key);

  @override
  State<CaleScreen> createState() => _CaleScreenState();
}
TextEditingController num1controller = TextEditingController();
TextEditingController num2controller = TextEditingController();
String result = "0";

@override
void dispose() {
  num1controller.dispose();
  num2controller.dispose();
}
class _CaleScreenState extends State<CaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: [
                const Text('Calculator',style: TextStyle(fontSize: 50),),
                const SizedBox(height: 30,),
               TextFormField(keyboardType: TextInputType.number,controller: num1controller,decoration: const InputDecoration(hintText: 'NO.1',border: OutlineInputBorder(borderSide: BorderSide(width: 2)))),
                const SizedBox(height: 15,),
                TextFormField(keyboardType: TextInputType.number,controller: num2controller,decoration: const InputDecoration(hintText: 'NO.2',border: OutlineInputBorder(borderSide: BorderSide(width: 2)))),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(onTap: (){
                      setState(() {
                        int sum = int.parse(num1controller.text) + int.parse(num2controller.text);
                        result = sum.toString();
                      });},
                        child: const Text('+',style: TextStyle(fontSize: 50),)),
                    const SizedBox(width: 50,),
                    InkWell(onTap: (){
                      setState(() {
                      int sum = int.parse(num1controller.text) - int.parse(num2controller.text);
                      result = sum.toString();
                      });},
                        child: const Text('-',style: TextStyle(fontSize: 50),)),
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(onTap: (){
                      setState(() {
                      int sum = int.parse(num1controller.text) * int.parse(num2controller.text);
                      result = sum.toString();
                      });},
                        child: const Text('*',style: TextStyle(fontSize: 50),)),
                    const SizedBox(width: 50,),
                    InkWell(onTap: (){
                      setState(() {
                      int sum = (int.parse(num1controller.text) ~/ int.parse(num2controller.text));
                      result = sum.toString();
                      });},
                        child: const Text('/',style: TextStyle(fontSize: 39),)),
              ],
            ),
                const SizedBox(height: 30,),
                 Text('Total = $result',style: const TextStyle(fontSize: 25),),
        ],
      ),
          ),),
    );
  }
}
