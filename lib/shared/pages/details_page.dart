import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:snapledger/core/error/error_logger.dart';
import 'package:snapledger/core/utils/useful_extension.dart';
import 'package:snapledger/core/utils/utils_function.dart';
import 'package:snapledger/shared/models/transaction_record_model.dart';
import 'package:snapledger/shared/widgets/build_transaction_record_list.dart';
import 'package:snapledger/shared/widgets/month_picker_row.dart';
import 'package:snapledger/shared/widgets/optional_tab.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int? _tabSelectedIndex = 1;
  DateTime _anchor = DateTime.now();
  static final _filterWithAmountTab = [(i) => i >= 0, (i) => i < 0];

  @override
  Widget build(BuildContext context) {
    // filter target year and month
    final rawTransactionRecordList = buildFakeTransactionRecordList()
        .where((r) => r.date.year == _anchor.year && r.date.month == _anchor.month)
        .toList();

    // filter income / expense
    final transactionRecordList = rawTransactionRecordList
        .where((r) => _tabSelectedIndex != null ? _filterWithAmountTab[_tabSelectedIndex!](r.amount) : true)
        .toList();

    final totalIncome = rawTransactionRecordList.map((r) => r.amount).where((r) => _filterWithAmountTab[0](r)).sum;
    final totalExpense = rawTransactionRecordList
        .map((r) => r.amount)
        .where((r) => _filterWithAmountTab[1](r))
        .map((r) => -r)
        .sum;

    final typeLabDetails = [
      TabDetail(
        title: 'income'.tr(),
        content: parseAmount(totalIncome),
        selectedColor: Colors.green.shade400,
        unselectedColor: context.cs.onSurfaceVariant.withValues(alpha: 0.7),
      ),
      TabDetail(
        title: 'expense'.tr(),
        content: parseAmount(totalExpense),
        selectedColor: Colors.red.shade300,
        unselectedColor: context.cs.onSurfaceVariant.withValues(alpha: 0.7),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('details'.tr(), style: context.tt.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: comingSoon, icon: Icon(LucideIcons.search)),
          IconButton(onPressed: comingSoon, icon: Icon(LucideIcons.moreVertical)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'fab_details_page',
        elevation: 6,
        onPressed: comingSoon,
        child: Icon(LucideIcons.pencil),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: MonthPickerRow(onSelected: (d) => setState(() => _anchor = d)),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {},
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      OptionalTab(details: typeLabDetails, onSelected: (i) => setState(() => _tabSelectedIndex = i)),
                      const SizedBox(height: 16),
                      Text('details'.tr(), style: context.tt.titleSmall.bold),
                      buildTransactionRecordList(
                        context,
                        expenseHighlight: _tabSelectedIndex == null,
                        records: transactionRecordList,
                      ),
                      const SizedBox(height: 60), // For FAB
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<TransactionRecordModel> buildFakeTransactionRecordList() => [
  TransactionRecordModel(
    id: '0',
    title: 'Online Service Bundle',
    date: DateTime(2026, 3, 30),
    amount: -1160,
    category: 'Fees',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '1',
    title: 'Government Cash Bonus',
    date: DateTime(2026, 3, 30),
    amount: 10000,
    category: 'Bonus',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '2',
    title: 'Game Pass Subscription',
    date: DateTime(2026, 3, 26),
    amount: 0,
    category: 'Entertainment',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '3',
    title: 'Performance Reward',
    date: DateTime(2026, 3, 25),
    amount: 500,
    category: 'Bonus',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '4',
    title: 'Game Content Pack',
    date: DateTime(2026, 3, 23),
    amount: -30,
    category: 'Entertainment',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '5',
    title: 'Monthly Game Pass',
    date: DateTime(2026, 3, 23),
    amount: -170,
    category: 'Entertainment',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '6',
    title: 'In-App Currency Top-Up',
    date: DateTime(2026, 3, 23),
    amount: -6173,
    category: 'Entertainment',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '7',
    title: 'Food Purchase #A17',
    date: DateTime(2026, 3, 19),
    amount: -330,
    category: 'Food',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '8',
    title: 'Entertainment Allowance',
    date: DateTime(2026, 3, 16),
    amount: 3660,
    category: 'Allowance',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '9',
    title: 'Mobile Game Credits',
    date: DateTime(2026, 3, 16),
    amount: -330,
    category: 'Entertainment',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '10',
    title: 'Keyboard Purchase',
    date: DateTime(2026, 3, 12),
    amount: -4990,
    category: 'Shopping',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '11',
    title: 'Meal Order #B24',
    date: DateTime(2026, 3, 8),
    amount: -140,
    category: 'Food',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '12',
    title: 'Untitled Entry',
    date: DateTime(2026, 3, 5),
    amount: -200,
    category: 'Uncategorized',
    type: 'Manual',
    note: 'Personal',
  ),
  TransactionRecordModel(
    id: '13',
    title: 'Fast Food Order #C08',
    date: DateTime(2026, 3, 2),
    amount: -137,
    category: 'Food',
    type: 'Manual',
    note: 'Personal',
  ),
];

