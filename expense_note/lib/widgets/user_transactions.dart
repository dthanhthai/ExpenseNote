import 'package:expense_note/models/transaction.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 99.99, date: DateTime.now()),
    Transaction(
        id: "t1", title: "Weeky Groceries", amount: 17.99, date: DateTime.now()),
    Transaction(
        id: "t1", title: "Weeky Groceries", amount: 17.99, date: DateTime.now()),
    Transaction(
        id: "t1", title: "Weeky Groceries", amount: 17.99, date: DateTime.now()),
    Transaction(
        id: "t1", title: "Weeky Groceries", amount: 17.99, date: DateTime.now()),
    Transaction(
        id: "t1", title: "Weeky Groceries", amount: 17.99, date: DateTime.now()),
    Transaction(
        id: "t1", title: "Weeky Groceries", amount: 17.99, date: DateTime.now()),
    Transaction(
        id: "t1", title: "Weeky Groceries", amount: 17.99, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double amount) {
    final newTx = Transaction(
        title: txTitle,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}
