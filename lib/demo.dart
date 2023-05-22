import 'package:calucation/control_flow_programs/armstrong_number.dart';
import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CommonContainer(onPress: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const ArmstrongNumber()),);},title:'Armstrong Number',),

        ],
      ),
    );
  }
}

class CommonContainer extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  const CommonContainer({Key? key, required this.onPress, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 50,
          width: 100,
          color: Colors.blue,
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}
