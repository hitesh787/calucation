import 'package:flutter/material.dart';

class MeterToKM extends StatefulWidget {
  const MeterToKM({Key? key}) : super(key: key);

  @override
  State<MeterToKM> createState() => _MeterToKMState();
}

class _MeterToKMState extends State<MeterToKM> {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  String result1 = '';
  String result2 = '';
  String result3 = '';
  String result4 = '';
  String result5 = '';
  String result6 = '';


  double number = 0;
  double total = 0;

  // Meter To CM
  isConverterMeterToCM()
  {
    total  = (number * 0.01) ;
    setState(() {result1 =  '$total  Meter.';});
  }

  // Meter To Km
  isConverterMeterToKM()
  {
    total  = number / 1000 ;
    setState(() {result2 =  '$total KM.';});
  }

  // km  To Meter
  isConverterKMToMeter()
  {
    total  = number * 1000 ;
    setState(() {result3 =  '$total Meter.';});
  }

  // KG to Gram
  isConvertKGToGram()
  {
    total =number * 1000 ;
    setState(() {result4 =  '$total Gram' ;});
  }

  //Feet To Inches
  isConvertFeetToInches()
  {
    total =number * 12 ;
    setState(() {result5 =  '$total Inches';});
  }

  // Liter To MilliLiter
  isConvertLiterToML ()
  {
    total = number *100 ;
    setState(() {result6 =  '$total Milliliter';});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Converter'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'CM',border: OutlineInputBorder(),),
                onChanged: (String value){
                  setState(() {number = double.tryParse(value)!;
                    isConverterMeterToCM();
                  });
                },
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: controller2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Meter',border: OutlineInputBorder(),),
                onChanged: (String value){
                  setState(() {number = double.tryParse(value)!;
                  isConverterMeterToKM();
                  });
                },
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: controller3,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'KM',border: OutlineInputBorder(),),
                onChanged: (String value){
                  setState(() {number = double.tryParse(value)!;
                  isConverterKMToMeter();
                  });
                },
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: controller4,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: ' KG',border: OutlineInputBorder(),),
                onChanged: (String value){
                  setState(() {number = double.tryParse(value)!;
                  isConvertKGToGram();
                  });
                },
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: controller5,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: ' Feet',border: OutlineInputBorder(),),
                onChanged: (String value){
                  setState(() {number = double.tryParse(value)!;
                  isConvertFeetToInches();
                  });
                },
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: controller6,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: ' Liter',border: OutlineInputBorder(),),
                onChanged: (String value){
                  setState(() {number = double.tryParse(value)!;
                  isConvertLiterToML();
                  });
                },
              ),

              const SizedBox(height: 20,),
              Text(result1,style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              Text(result2,style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              Text(result3,style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              Text(result4,style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              Text(result5,style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              Text(result6,style: const TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class Converter extends StatefulWidget {
//   const Converter({Key? key}) : super(key: key);
//
//   @override
//   State<Converter> createState() => _ConverterState();
// }
//
// class _ConverterState extends State<Converter> {
//
//   TextEditingController lengthController = TextEditingController();
//
//   double meter = 0.0;
//   double km = 0.0;
//   double cm = 0;
//   double feet = 0;
//   double kg = 0;
//   double liter = 0;
//   double ml = 0;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Converter'),),
//       body: Container(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             const SizedBox(height: 15,),
//             TextField(
//               controller: lengthController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: 'Number',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: (){
//
//                 double number = double.tryParse(lengthController.text)!;
//
//                 setState(() {
//
//                   cm  = number * 100 ; // Meter to Cm
//                   km = number / 1000 ; // Meter To Km
//                   meter = number * 1000 ; //km  To Meter
//
//                   kg = number* 1000 ; // KG to Gram
//
//                   feet = number * 12; // Feet To Inche
//
//                   ml = number *100 ; // Liter to Milliliter
//
//                 },
//                 );
//               },
//               child: const Text('Calculate'),
//             ),
//             const SizedBox(height: 16.0),
//
//             Text('CM: $cm',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             const SizedBox(height: 16.0),
//
//             Text('Meter: $meter',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             const SizedBox(height: 16.0),
//
//             Text('KM: $km',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             const SizedBox(height: 16.0),
//
//             Text('KG: $kg',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             const SizedBox(height: 16.0),
//
//             Text('Feet : $feet',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             const SizedBox(height: 16.0),
//
//             Text('Milliliter : $ml',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             const SizedBox(height: 16.0),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
