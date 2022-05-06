import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../transaction/model/money_model_transaction.dart';

class ListDate extends StatelessWidget {
  final TransactionModel current;
  final TransactionModel? previous;

  const ListDate({Key? key, required this.current, this.previous})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return previous == null
        ? Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            width: double.infinity,
            child: Text(_getDateString(current.minted).toUpperCase()))
        : current.minted.day != previous!.minted.day
            ? Container(
                padding: const EdgeInsets.only(left: 10, top: 10),
                width: double.infinity,
                child: Text(_getDateString(current.minted).toUpperCase(),
                    textAlign: TextAlign.start))
            : Container();
  }

  String _getDateString(DateTime date) {
    if (_isToday(date)) return 'Today';
    if (_isYesterday(date)) return 'Yesterday';
    return DateFormat('EEEE, d MMM').format(date);
  }

  bool _isToday(DateTime date) {
    DateTime now = DateTime.now();
    return date.isAfter(now.subtract(Duration(
      hours: now.hour,
      minutes: now.minute,
      seconds: now.second,
      milliseconds: now.millisecond,
      microseconds: now.microsecond,
    )));
  }

  bool _isYesterday(DateTime date) {
    DateTime now = DateTime.now();
    return date.isAfter(now.subtract(Duration(
      hours: now.hour + Duration.hoursPerDay,
      minutes: now.minute,
      seconds: now.second,
      milliseconds: now.millisecond,
      microseconds: now.microsecond,
    )));
  }
}