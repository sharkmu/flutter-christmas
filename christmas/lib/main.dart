import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Christmas App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Christmas App | sharkmu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _merryChristmas = [
    "Merry Christmas!",
    "Boldog karácsonyt!",
    "Frohe Weihnachten!",
    "¡Feliz Navidad!",
    "Joyeux Noël!",
    "Buon Natale!",
    "Feliz Natal!",
    "Vrolijk Kerstfeest!",
    "Счастливого Рождества!",
    "メリークリスマス",
    "圣诞快乐",
    "메리 크리스마스"
  ];
  int _index = 0;
  late String _currentText;

  @override
  void initState() {
    super.initState();
    _currentText = _merryChristmas[_index];
  }

  void _incrementIndex() {
    setState(() {
      _index = (_index + 1) % _merryChristmas.length;
      _currentText = _merryChristmas[_index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _currentText,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementIndex,
        tooltip: 'Next',
        child: const Icon(Icons.change_circle_outlined),
      ),
    );
  }
}
