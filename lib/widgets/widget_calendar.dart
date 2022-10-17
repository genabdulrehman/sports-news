import 'package:azul_football/helpers/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardCalendarMain extends StatelessWidget {
  final Function onChangeDate;
  final selectedDate;

  CardCalendarMain({@required this.onChangeDate, @required this.selectedDate});

  List<DateTime> _listDates = [
    DateTime.now().subtract(Duration(days: 3)),
    DateTime.now().subtract(Duration(days: 2)),
    DateTime.now().subtract(Duration(days: 1)),
    DateTime.now().subtract(Duration(days: 0)),
    DateTime.now().subtract(Duration(days: -1)),
    DateTime.now().subtract(Duration(days: -2)),
    DateTime.now().subtract(Duration(days: -3)),
  ];

  var _selectedDate = DateTime.now().subtract(Duration(days: 0));

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context);
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            width: mSize.size.width,
            margin: EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              border: Border.all(color: theme.hintColor.withOpacity(0.15)),
            ),
          ),
        ),
        Container(
          width: mSize.size.width,
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < _listDates.length; i++)
                _CardDate(
                  date: _listDates[i],
                  isSelected: kFormatDateName(_listDates[i]) ==
                      kFormatDateName(selectedDate ?? _selectedDate),
                  onTap: () {
                    onChangeDate(_listDates[i]);
                  },
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CardDate extends StatelessWidget {
  final date;
  final onTap;
  final bool isSelected;

  _CardDate({
    this.date,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: isSelected
            ? EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0)
            : EdgeInsets.all(10.0),
        decoration: isSelected
            ? BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    theme.primaryColor,
                    theme.primaryColorDark,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
              )
            : null,
        child: Column(
          children: [
            Text(
              '${kFormatDateNumber(date)}',
              style: isSelected
                  ? theme.textTheme.headline1.copyWith(color: Colors.white)
                  : theme.textTheme.headline3
                      .copyWith(color: theme.accentColor.withOpacity(0.5)),
            ),
            Text(
              '${kFormatDateName(date)}',
              style: isSelected
                  ? theme.textTheme.headline5.copyWith(color: Colors.white)
                  : theme.textTheme.headline5
                      .copyWith(color: theme.accentColor.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
