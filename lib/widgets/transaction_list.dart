import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personalexpense/models/transiction.dart';
import 'package:personalexpense/widgets/user_transaction.dart';

class TransictionListState extends StatelessWidget {
  final List<Transaction> transaction;
  TransictionListState(this.transaction);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.purple),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${transaction[index].amount?.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transaction[index].title!,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      DateFormat('yyyy-MM-dd').format(transaction[index].date!),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: transaction.length,
      ),
    );
  }
}
