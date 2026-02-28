import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:snapledger/core/theme/typography.dart';
import 'package:snapledger/core/utils/utils.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:snapledger/shared/widgets/gesture_tooltip.dart';
import 'package:snapledger/shared/widgets/pull_up_action.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    final radius = 150;
    final tt = Theme.of(context).textTheme;

    return PullUpAction(
      onTrigger: () {},
      hintBuilder: (BuildContext context, double pullDistance, bool ready) => gestureTooltip(
        top: 0,
        bottom: 10 + pullDistance,
        left: 0,
        right: 0,
        showHint: pullDistance > 6,
        icon: ready ? LucideIcons.plus : LucideIcons.chevronUp,
        text: ready ? 'release_to_trigger'.tr() : 'quick_add_by_pull_up'.tr(),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('overview'.tr(), style: tt.titleLarge?.bold)),
        body: SafeArea(
          child: SizedBox.expand(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Money in Account
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 48),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SizedBox(
                          width: radius * 2,
                          height: radius * 2,
                          child: const CircularProgressIndicator(
                            value: 0.8,
                            year2023: false, // ignore: deprecated_member_use
                            strokeWidth: 20,
                            strokeCap: StrokeCap.round,
                          ),
                        ),
                        Text(
                          '\$15,320',
                          style: TextStyle(
                            fontSize: 50,
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

                  // Legend
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 8,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Chip(
                          avatar: CircleAvatar(backgroundColor: Colors.accents[i], radius: 5),
                          label: Text('test item', style: tt.titleMedium),
                        ),
                    ],
                  ),
                  // Text('Test Item'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}