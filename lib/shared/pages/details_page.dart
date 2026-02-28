import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:snapledger/core/error/error_logger.dart';
import 'package:snapledger/core/theme/typography.dart';
import 'package:snapledger/core/utils/utils.dart';
import 'package:snapledger/shared/models/list_tile_data_model.dart';
import 'package:snapledger/shared/widgets/build_material_list.dart';
import 'package:snapledger/shared/widgets/month_picker_row.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int? _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    final typeLabTitle = ['income'.tr(), 'expense'.tr()];
    final typeLabContent = [84392, 42290]; //FIXME: fake data
    final typeLabContentColor = [Colors.green[400], Colors.red[300]];
    final detailsDetail = [
      for (int i = 0; i < 10; i++)
        ListTileData.detail(
          date: DateTime(2026, 2, 12),
          title: '帳單明細',
          subtitle: '載具',
          content: 'DK1093APNV',
          type: '飲食',
          trailingText: Text(
            '\$-250',
            style: tt.headlineSmall?.copyWith(
              fontVariations: [FontVariation('ROND', 100), FontVariation.width(70), FontVariation.weight(700)],
            ),
          ),
          onClick: () {},
        ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('details'.tr(), style: tt.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
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
            Padding(padding: const EdgeInsets.symmetric(vertical: 16.0), child: MonthPickerRow()),
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
                      Row(
                        spacing: 8,
                        children: [
                          for (int i = 0; i < 2; i++)
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint('print income');
                                  setState(() {
                                    _selectIndex = _selectIndex == i ? null : i;
                                  });
                                  debugPrint(_selectIndex.toString());
                                },
                                child: AnimatedContainer(
                                  height: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: _selectIndex == i ? cs.surfaceContainerHighest : cs.surfaceContainerLow,
                                    borderRadius: BorderRadius.circular(_selectIndex == i ? 50 : 16),
                                  ),
                                  duration: const Duration(milliseconds: 100),
                                  child: Column(
                                    spacing: 8,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        typeLabTitle[i],
                                        style: tt.titleMedium.bold?.copyWith(
                                          color: _selectIndex == i || _selectIndex == null
                                              ? cs.onSurface
                                              : cs.onSurfaceVariant.withValues(alpha: 0.7),
                                        ),
                                      ),
                                      Text(
                                        '\$${typeLabContent[i]}',
                                        style: tt.titleLarge?.copyWith(
                                          color: _selectIndex == i || _selectIndex == null
                                              ? typeLabContentColor[i]
                                              : cs.onSurfaceVariant.withValues(alpha: 0.7),
                                          fontFamily: AppTypography.fontFamily,
                                          fontVariations: [
                                            FontVariation('ROND', 100),
                                            FontVariation.width(70),
                                            FontVariation.weight(750),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text('details'.tr(), style: tt.titleSmall.bold),
                      buildMaterialList(context, raw: detailsDetail),
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
