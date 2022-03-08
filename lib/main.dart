import 'package:case3_1_counter/shared_pref_lib.dart';
import 'package:flutter/material.dart';
import 'file_rw_lib.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  /*int _counter1 = 0;
  int _counter2 = 0;*/

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color : Color (0xFF777777), width : 2));

    return MaterialApp(
        home: Scaffold(

          body: Column(children: [
            MyHomePage(),
            FlutterDemo(storage: CounterStorage())
          ],))
    );
  } //build
} //MyApp