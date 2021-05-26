import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateText extends StatelessWidget {
  final String dateFormat;
  final DateTime date;
  final TextStyle style;
  const DateText({Key key, @required this.date, this.dateFormat = 'MMMM dd yyyy', this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      date != null ? DateFormat(dateFormat).format(date.toLocal()) : '',
      style: style,
    );
  }
}
