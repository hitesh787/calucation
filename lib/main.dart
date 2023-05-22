import 'package:calucation/pattern_printing_programs/character_pattern.dart';
import 'package:calucation/pattern_printing_programs/continuous_character_pattern.dart';
import 'package:calucation/pattern_printing_programs/floyd%E2%80%99s_pattern_triangle_pyramid.dart';
import 'package:calucation/pattern_printing_programs/full_diamond_shape_pyramid.dart';
import 'package:calucation/pattern_printing_programs/hollow_star_pyramid_in_a_diamond_shape.dart';
import 'package:calucation/pattern_printing_programs/inverted_hollow_star_pyramid_pattern.dart';
import 'package:calucation/pattern_printing_programs/inverted_pyramid.dart';
import 'package:calucation/pattern_printing_programs/left_half_pyramid_pattern.dart';
import 'package:calucation/pattern_printing_programs/number_pattern_without%20_reassigning.dart';
import 'package:calucation/pattern_printing_programs/pascal%E2%80%99s_triangle.dart';
import 'package:calucation/pattern_printing_programs/reverse_floyd_pattern_triangle_pyramid.dart';
import 'package:calucation/pattern_printing_programs/right_half_pyramid_pattern.dart';
import 'package:calucation/pattern_printing_programs/triangle_pattern.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',
      home:  LeftHalfPyramidScreen(),
    );
  }
}












