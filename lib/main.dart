
import 'package:flutter/material.dart';

import 'package:namer_app/widget_test.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: const HomeScreen(),
     theme: ThemeData.light(useMaterial3: true)
    );
 }
}