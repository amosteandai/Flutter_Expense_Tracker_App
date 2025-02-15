import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/widgets.dart';

class ExpensesList extends StatelessWidget {
  ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Text(expenses[index].title),
    );
  }
}
