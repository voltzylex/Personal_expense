import 'package:flutter/cupertino.dart';
import 'package:personalexpense/widgets/new_transaction.dart';
import 'package:personalexpense/widgets/transaction_list.dart';

import '../models/transiction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _UserTransaction = [
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
  void _addNewTransaction(String txTitle, double Amount) {
    final newTx = Transaction(
        amount: Amount,
        id: DateTime.now().toString(),
        date: DateTime.now(),
        title: txTitle);
    setState(() {
      _UserTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        SizedBox(
          height: 10,
        ),
        TransictionListState(_UserTransaction),
      ],
    );
  }
}
