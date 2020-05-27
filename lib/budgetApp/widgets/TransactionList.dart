import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:new_project_for_startup/budgetApp/models/TransactionModel.dart';

class TransactionList extends StatelessWidget {
  TransactionList(this.transaction);

  final List<TransactionModel> transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepPurple,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Rs: ${transaction[index].amount}",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      transaction[index].title,
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat.yMMMMEEEEd()
                          .add_jm()
                          .format(transaction[index].date),
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              )
            ],
          ));
        },
        itemCount: transaction.length,
      ),
    );
  }
}
