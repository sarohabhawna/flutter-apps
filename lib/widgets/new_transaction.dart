import 'package:flutter/material.dart';

import './transaction_list.dart';

class NewTransaction extends StatefulWidget {
  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                    // onChanged: (value) {
                    //   titleInput = value;
                    // },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    // onChanged: (value) {
                    //   amountInput = value;
                    // },
                  ),
                  FlatButton(
                    child: Text('Add transaction'),
                    textColor: Colors.teal,
                    onPressed: () {
                      print(titleInput);
                      print(amountInput);
                    },
                  )
                ],
              ),
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}
