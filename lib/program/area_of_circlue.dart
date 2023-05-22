import 'package:flutter/material.dart';

class AreaOfPerimeter extends StatefulWidget {
  const AreaOfPerimeter({Key? key}) : super(key: key);

  @override
  State<AreaOfPerimeter> createState() => _AreaOfPerimeterState();
}

class _AreaOfPerimeterState extends State<AreaOfPerimeter> {

  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();

  double area = 0.0;
  double perimeter = 0.0;
  double square = 0;
  double circle = 0;
  double rectangle = 0;
  double semiCircle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rectangle Area and Perimeter Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 15,),
            TextField(
              controller: lengthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Length',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: widthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Width',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){

                double length = double.tryParse(lengthController.text)!;
                double width = double.tryParse(widthController.text)!;

                setState(() {

                  square = width*width;
                  circle = 22/7*length*length;
                  rectangle = length*width;
                  semiCircle = (3.14*length*length)/2;
                  area = length * width;
                  perimeter = 2 * (length + width);

                  },
                );
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16.0),

            Text('Square: $square',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 16.0),

            Text('Circle: $circle',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 16.0),

            Text('Rectangle: $rectangle',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 16.0),

            Text('Semi Circle: $semiCircle',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 16.0),

            Text('Area: $area',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 16.0),

            Text('Perimeter: $perimeter',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 16.0),

          ],
        ),
      ),
    );
  }
}
