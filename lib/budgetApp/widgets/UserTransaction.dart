import 'package:flutter/cupertino.dart';

import '../models/TransactionModel.dart';
import '../widgets/NewTransaction.dart';
import '../widgets/TransactionList.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<TransactionModel> _userTransactions = [
    TransactionModel(
      id: "t1",
      title: "New Cars",
      amount: 23,
      date: DateTime.now(),
    ),
    TransactionModel(
      id: "t2",
      title: "New Shoes",
      amount: 34,
      date: DateTime.now(),
    ),
  ];

  void _newTransaction(String title, int amount) {
    final transaction = new TransactionModel(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_newTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
