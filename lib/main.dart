import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '우아한테크코스 프리코스 1주차 문자열 계산기',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF2AC1BC),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Color(0xFF2AC1BC),
      ),
      home: const MyHomePage(title: '우아한테크코스 프리코스 1주차 문자열 계산기'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                '0',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('7 pressed');
                    },
                    child: Text('7', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('8 pressed');
                    },
                    child: Text('8', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('9 pressed');
                    },
                    child: Text('9', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('/ pressed');
                    },
                    child: Text('/', style: TextStyle(fontSize: 24)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('4 pressed');
                    },
                    child: Text('4', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('5 pressed');
                    },
                    child: Text('5', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('6 pressed');
                    },
                    child: Text('6', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('* pressed');
                    },
                    child: Text('*', style: TextStyle(fontSize: 24)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('1 pressed');
                    },
                    child: Text('1', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('2 pressed');
                    },
                    child: Text('2', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('3 pressed');
                    },
                    child: Text('3', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('+ pressed');
                    },
                    child: Text('+', style: TextStyle(fontSize: 24)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('C pressed');
                    },
                    child: Text('C', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('0 pressed');
                    },
                    child: Text('0', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('= pressed');
                    },
                    child: Text('=', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print('- pressed');
                    },
                    child: Text('-', style: TextStyle(fontSize: 24)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
