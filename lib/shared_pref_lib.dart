
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


/*
void main() {
  runApp(const SharedPrefScreen());
}

class SharedPrefScreen extends StatelessWidget {
  const SharedPrefScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //title: 'Shared pref демонстрация',
      home: MyHomePage(),
    );
  }
}*/

class MyHomePage extends StatefulWidget{
  const MyHomePage ({Key? key}): super(key: key);

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Счетчик №1'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF0079D0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36.0),
                ),
              ) ,  // ElevatedButton.styleFrom
            ),
            const SizedBox(height: 20),
            Text('Кнопка 1 нажата $_counter ', style: Theme
                .of(context).textTheme.headline4),
            Text(' раз', style: Theme.of(context).textTheme.headline4)
          ],
        ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Увеличение',
        child: const Icon(Icons.add),*/
      );
  }

  //Загрузка стартового значения счетчика
  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  //По клику увеличить счетчик

  void _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }
}