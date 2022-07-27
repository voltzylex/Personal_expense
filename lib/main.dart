import 'package:flutter/material.dart';
import 'package:personalexpense/transiction.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomepage(),
  ));
}

class MyHomepage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      amount: 69.99,
      id: 't1',
      title: 'New Shoes',
      date: DateTime.now(),
    ),
    Transaction(
      amount: 69.99,
      id: 't2',
      title: 'New Bag',
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App !"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("This is body"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: transaction.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text("money"),
                    ),
                    Column(
                      children: <Widget>[
                        Text('part 1'),
                        Text('part 2'),
                      ],
                    )
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
