import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:snapledger/core/utils/utils.dart';

class MonthPickerRow extends StatefulWidget {
  const MonthPickerRow({super.key});

  @override
  State<MonthPickerRow> createState() => _MonthPickerRowState();
}

class _MonthPickerRowState extends State<MonthPickerRow> {
  static const int _years = 10;
  static const int _virtualCount = _years * 12;
  static const int _centerIndex = _virtualCount ~/ 2;
  static const double _itemWidth = 72;

  final DateTime _anchor = DateTime.now();
  static const _separator = 1.0;
  static const _stride = _itemWidth + _separator;
  static const _offsetYear = _years / 2 + 1;
  static const _initOffset = _centerIndex * _stride + _offsetYear * _stride;
  final ScrollController _ctrl = ScrollController(initialScrollOffset: _initOffset);

  int _selectIndex = _centerIndex;

  DateTime _monthAt(int index) {
    final delta = index - _centerIndex;
    return DateTime(_anchor.year, _anchor.month + delta);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    Widget button(int index, DateTime date, bool isSelected) {
      return GestureDetector(
        onTap: () => setState(() {
          _selectIndex = index;
        }),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOut,
          width: _itemWidth,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? cs.primaryContainer : cs.surfaceContainerLowest,
            borderRadius: BorderRadius.circular(isSelected ? 50 : 8),
          ),
          child: Text(DateFormat.MMM().format(date), style: tt.titleSmall?.bold),
        ),
      );
    }

    return SizedBox(
      height: 40,
      child: ListView.separated(
        controller: _ctrl,
        scrollDirection: Axis.horizontal,
        itemCount: _virtualCount,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 4),
        itemBuilder: (BuildContext ctx, int index) {
          final date = _monthAt(index);
          final prev = _monthAt(index - 1);
          final isYear = index == 0 || date.year != prev.year;
          final isSelected = _selectIndex == index;

          if (isYear) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: _itemWidth,
                  alignment: Alignment.center,
                  child: Text(date.year.toString(), style: tt.titleSmall?.bold),
                ),
                button(index, date, isSelected),
              ],
            );
          } else {
            return button(index, date, isSelected);
          }
        },
      ),
    );
  }
}
