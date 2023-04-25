import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smartconsulting/core/app_export.dart';
import 'package:smartconsulting/models/invoice_model.dart';

class DatePickerWidget extends StatefulWidget {
  final DateTime initialDate;
  final Function(DateTime) onCallback;

  DatePickerWidget({required this.initialDate, required this.onCallback});

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: _selectedDate,
          firstDate: DateTime(1900),
          lastDate: DateTime.now().add(Duration(days: 30)),
        ).then((selectedDate) {
          if (selectedDate != null) {
            setState(() {
              _selectedDate = selectedDate;
              widget.onCallback(_selectedDate);
            });
          }
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: ColorConstant.whiteA700))),
              child: Text(
                DateFormat.yMMMd().format(_selectedDate),
                style: TextStyle(
                  color: ColorConstant.whiteA700A2,
                  fontSize: 14,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.calendar_today,
            color: ColorConstant.whiteA700,
          ),
        ],
      ),
    );
  }
}
