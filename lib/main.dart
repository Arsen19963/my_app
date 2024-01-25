import 'package:flutter/material.dart';
import './transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static final List<Transaction> transactions = [
    Transaction(
        id: '1', title: 'New Shoes', amount: 65.35, date: DateTime.now()),
    Transaction(
        id: '2', title: 'New Jeans', amount: 16.10, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child:
                const SizedBox(width: double.infinity, child: Text('CHART!')),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Text(tx.amount.toString()),
                    Text(tx.title.toString()),
                    Text(tx.date.toString()),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
