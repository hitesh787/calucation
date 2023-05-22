// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';


class FahrenheitToCelsius extends StatefulWidget {
  const FahrenheitToCelsius({super.key});

  @override
  _FahrenheitToCelsiusState createState() => _FahrenheitToCelsiusState();
}

class _FahrenheitToCelsiusState extends State<FahrenheitToCelsius> {
  TextEditingController fahrenheitController = TextEditingController();
  TextEditingController celsiusController = TextEditingController();

  isConvertToCelsius() {
    double fahrenheit = double.tryParse(fahrenheitController.text) ?? 0.0;
    double celsius = (fahrenheit - 32) * 5 / 9;
    celsiusController.text = celsius.toStringAsFixed(2);
  }

  isConvertToFahrenheit() {
    double celsius = double.tryParse(celsiusController.text) ?? 0.0;
    double fahrenheit = (celsius * 9 / 5) + 32;
    fahrenheitController.text = fahrenheit.toStringAsFixed(2);
  }


  @override
  void dispose() {
    fahrenheitController.dispose();
    celsiusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fahrenheit to Celsius Converter'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: fahrenheitController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Fahrenheit',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                if (value.isEmpty) {
                  celsiusController.clear();
                } else {
                  isConvertToCelsius();
                }
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: celsiusController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Celsius',border: OutlineInputBorder(),),
              onChanged: (value) {
                if (value.isEmpty) {
                  fahrenheitController.clear();
                } else {
                  isConvertToFahrenheit();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
