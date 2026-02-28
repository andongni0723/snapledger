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
  final items = ['Test item', 'Test item', 'Test item', 'Test item', 'Test item'];
  final Set<int> visible = {};

  @override
  void initState() {
    super.initState();
    _playStagger();
  }

  Future<void> _playStagger() async {
    for (int i = 0; i < items.length; i++) {
      await Future.delayed(const Duration(milliseconds: 500));
      if (!mounted) return;
      setState(() => visible.add(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    final radius = 150;
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return PullUpAction(
      maxLift: 125,
      triggerOffset: 100,
      onTrigger: () {},
      hintBuilder: (BuildContext context, double pullDistance, bool ready) => gestureTooltip(
        top: 0,
        bottom: 10 + pullDistance,
        left: 0,
        right: 0,
        showHint: pullDistance > 6,
        icon: ready ? LucideIcons.pencil : LucideIcons.chevronUp,
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
                          child: CircularProgressIndicator(
                            value: 0.9,
                            backgroundColor: cs.surfaceContainerLowest,
                            color: cs.primary.withValues(alpha: 0.2),
                            // ignore: deprecated_member_use
                            year2023: false,
                            strokeWidth: 20,
                            strokeCap: StrokeCap.round,
                          ),
                        ),
                        SizedBox(
                          width: radius * 2,
                          height: radius * 2,
                          child: const CircularProgressIndicator(
                            value: 0.8,
                            backgroundColor: Colors.transparent,
                            // ignore: deprecated_member_use
                            year2023: false,
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
                  const SizedBox(height: 52),
                  Column(
                    children: [
                      ...items.asMap().entries.map((entry) {
                        final show = visible.contains(entry.key);
                        return TweenAnimationBuilder<double>(
                          key: ValueKey('row_${entry.key}'),
                          tween: Tween(begin: show ? 1 : 0, end: show ? 1 : 0),
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOutCubic,
                          builder: (context, value, child) {
                            return Opacity(
                              opacity: value,
                              child: Transform.translate(
                                offset: Offset(40 * (1 - value), 0),
                                child: child,
                              ),
                            );
                          },
                          child: Row(
                            spacing: 12,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                entry.value,
                                style: tt.titleMedium?.copyWith(color: cs.onSurfaceVariant.withValues(alpha: 0.7)),
                              ),
                              const SizedBox(width: 8),
                              Text('\$-320', style: tt.titleMedium),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
