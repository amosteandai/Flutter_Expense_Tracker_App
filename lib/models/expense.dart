import 'package:uuid/uuid.dart'; // it is an external package that allows to generate Uuid use this to install it (flutter pub add uuid)

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}

// run on the terminal (flutter pub add uuid) to add uuid package
