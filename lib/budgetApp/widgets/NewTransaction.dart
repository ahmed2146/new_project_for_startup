import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrange,
                ),
              ),
              onSubmitted: (_) => newTransaction(),
              controller: titleController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
              onSubmitted: (_) => newTransaction(),
              decoration: InputDecoration(
                labelText: "Amount",
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrange,
                ),
              ),
              controller: amountController,
            ),
            FlatButton(
              onPressed: newTransaction,
              child: Text("Add Transction"),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  void newTransaction() {
    final title = titleController.text;
    final amount = int.parse(amountController.text);

//    if (title.isEmpty || amount <= 0) return;

    addNewTransaction(title, amount);
  }
}
