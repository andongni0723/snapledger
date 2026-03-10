import 'package:flutter/material.dart';
import 'package:snapledger/core/utils/useful_extension.dart';
import 'package:snapledger/core/utils/utils_function.dart';
import 'package:snapledger/shared/models/list_tile_data_model.dart';
import 'package:snapledger/shared/models/transaction_record_model.dart';
import 'package:snapledger/shared/widgets/build_material_list.dart';

Widget buildTransactionRecordList(BuildContext context, {required List<TransactionRecordModel> records}) {
  final raw = records
      .map(
        (r) => ListTileData.detail(
          date: r.date,
          title: r.title,
          subtitle: r.type,
          content: r.note,
          type: r.category,
          trailingText: Text(
            parseAmount(r.amount),
            style: context.tt.titleLarge?.copyWith(
              color: r.amount > 0 ? Colors.green.shade400 : context.cs.onSurface,
              fontVariations: [FontVariation('ROND', 100), FontVariation.width(70), FontVariation.weight(700)],
            ),
          ),
          onClick: () {},
        ),
      )
      .toList();
  return buildMaterialList(context, raw: raw);
}
