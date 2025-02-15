import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 4,
            ), // to add space between the two widget
            Row(
              children: [
                Text(
                  '\$${expense.amount.toStringAsFixed(2)}',
                ), // to ensure a value like 12.34367 => 12.34
                const Spacer(), //this will always take the remaining space
                Row(
                  children: [
                    Icon(Icons.alarm),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.date.toString())
                  ],
                ), //Group category and date together
              ],
            ),
          ],
        ),
      ),
    );
  }
}
