import 'package:flutter/material.dart';

class TotalMarks extends StatefulWidget {
  const TotalMarks({Key? key}) : super(key: key);

  @override
  State<TotalMarks> createState() => _TotalMarksState();
}

class _TotalMarksState extends State<TotalMarks> {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  String result = '';
  double sub1 = 0;
  double sub2 = 0;
  double sub3 = 0;
  double sub4 = 0;
  double sub5 = 0;
  double simplePresent = 0;

  isTotalMarks()
  {
    simplePresent = (sub1 + sub2 + sub3 + sub4 + sub5) /250 * 100 ;
    setState(() {result=  '$simplePresent % Total Per.';});
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Total Marks'),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: Column(
        children:  [
           TextField(
            controller: controller1,
             onChanged: (String value){
               setState(() {
                 sub1 = double.tryParse(value)!;
                 isTotalMarks();
               });
             },
            decoration: const InputDecoration(hintText: 'Subject 1'),
          ),
           TextField(
             onChanged: (String value){
               setState(() {
                 sub2 = double.tryParse(value)!;
               });
             },
             controller: controller2,
            decoration: const InputDecoration(hintText: 'Subject 2'),
          ),
           TextField(
             onChanged: (String value){
               setState(() {
                 sub3 = double.tryParse(value)!;
               });
             },
             controller: controller3,
            decoration: const InputDecoration(hintText: 'Subject 3'),
          ),
           TextField(
             controller: controller4,
             onChanged: (String value){
               setState(() {
                 sub4 = double.tryParse(value)!;
               });
             },
            decoration: const InputDecoration(hintText: 'Subject 4'),
          ),
           TextField(
             controller: controller5,
             onChanged: (String value){
               setState(() {
                 sub5 = double.tryParse(value)!;
               });
             },
            decoration: const InputDecoration(hintText: 'Subject 5'),
          ),
           const SizedBox(height: 30,),
          ElevatedButton(onPressed: isTotalMarks, child: const Text('Total Per')),
          Text("$result",style: const TextStyle(fontSize: 25),)
        ],
      ),
      ),
    );
  }
}
