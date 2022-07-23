import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_editing_controller/texteditingcontroller.dart';


void main(){
  runApp(const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YA ALLAH',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyTextEditingController(title: 'CASIAN DEVELOPER\'S',),
    );
  }
}
