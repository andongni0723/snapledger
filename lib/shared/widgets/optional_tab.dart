import 'package:flutter/material.dart';
import 'package:snapledger/core/theme/typography.dart';
import 'package:snapledger/core/utils/useful_extension.dart';

class TabDetail {
  final String title;
  final String content;
  final Color selectedColor;
  final Color unselectedColor;

  TabDetail({required this.title, required this.content, required this.selectedColor, required this.unselectedColor});
}

class OptionalTab extends StatefulWidget {
  final List<TabDetail> details;
  final Function(int?) onSelected;

  const OptionalTab({super.key, required this.details, required this.onSelected});

  @override
  State<OptionalTab> createState() => _OptionalTabState();
}

class _OptionalTabState extends State<OptionalTab> {
  int? _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Row(
      spacing: 8,
      children: [
        ...widget.details.asMap().entries.map((entry) {
          final i = entry.key;
          final detail = entry.value;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = _selectedIndex == i ? null : i;
                });
                widget.onSelected(_selectedIndex);
              },
              child: AnimatedContainer(
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _selectedIndex == i ? cs.surfaceContainerHighest : cs.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(_selectedIndex == i ? 50 : 16),
                ),
                duration: const Duration(milliseconds: 100),
                child: Column(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      detail.title,
                      style: tt.titleMedium.bold?.copyWith(
                        color: _selectedIndex == i || _selectedIndex == null
                            ? cs.onSurfaceVariant
                            : detail.unselectedColor,
                      ),
                    ),
                    Text(
                      detail.content,
                      style: tt.titleLarge?.copyWith(
                        color: _selectedIndex == i || _selectedIndex == null
                            ? detail.selectedColor
                            : detail.unselectedColor,
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
          );
        }),
      ],
    );
  }
}
