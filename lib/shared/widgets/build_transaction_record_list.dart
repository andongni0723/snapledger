import 'package:flutter/material.dart';
import 'package:snapledger/core/utils/useful_extension.dart';
import 'package:snapledger/core/utils/utils_function.dart';
import 'package:snapledger/shared/models/list_tile_data_model.dart';
import 'package:snapledger/shared/models/transaction_record_model.dart';
import 'package:snapledger/shared/widgets/build_material_list.dart';

Widget buildTransactionRecordList(
  BuildContext context, {
  bool expenseHighlight = false,
  required List<TransactionRecordModel> records,
}) {
  final raw = records.map((r) {
    final amountColor = r.amount >= 0
        ? Colors.green.shade400
        : (expenseHighlight ? Colors.red.shade300 : context.cs.onSurface);

    return ListTileData.detail(
      date: r.date,
      title: r.title,
      subtitle: r.type,
      content: r.note,
      type: r.category,
      trailingText: AnimatedDefaultTextStyle(
        duration: Duration(microseconds: 2000),
        curve: Curves.easeInOut,
        style: (context.tt.titleLarge ?? TextStyle()).copyWith(
          color: amountColor,
          fontVariations: [FontVariation('ROND', 100), FontVariation.width(70), FontVariation.weight(700)],
        ),
        child: Text(parseAmount(r.amount)),
      ),
      onClick: () {},
    );
  }).toList();
  return buildMaterialList(context, raw: raw);
}
