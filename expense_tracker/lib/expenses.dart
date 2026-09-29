import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Fee for Maxim',
      amount: 65.00,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Tuition Fee (Partial)',
      amount: 1500.00,
      date: DateTime.now(),
      category: Category.school,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Expense Tracker'),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('Chart Here!'),
          Expanded(
            child: ListView.builder(
              itemCount: _registeredExpenses.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(_registeredExpenses[index].title),
                subtitle: Text('₱${_registeredExpenses[index].amount.toStringAsFixed(2)}'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}