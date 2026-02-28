import 'package:flutter/material.dart';

typedef PullUpHintBuilder =
    Widget Function(BuildContext context, double pullDistance, bool ready);

class PullUpAction extends StatefulWidget {
  const PullUpAction({
    super.key,
    required this.child,
    required this.hintBuilder,
    this.maxLift = 72,
    this.triggerOffset = 56,
    this.rebound = const Duration(milliseconds: 260),
    this.onTrigger,
  });

  final Widget child;
  final PullUpHintBuilder hintBuilder;
  final double maxLift;
  final double triggerOffset;
  final Duration rebound;
  final VoidCallback? onTrigger;

  @override
  State<PullUpAction> createState() => _PullUpActionState();
}

class _PullUpActionState extends State<PullUpAction>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  Animation<double>? _returnAnimation;
  double _offsetY = 0;

  double get _pullDistance => (-_offsetY).clamp(0.0, widget.maxLift);
  bool get _ready => _pullDistance >= widget.triggerOffset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.rebound);
  }

  @override
  void dispose() {
    _returnAnimation?.removeListener(_tickAnimation);
    _controller.dispose();
    super.dispose();
  }

  void _onDragUpdate(DragUpdateDetails details) {
    final delta = details.primaryDelta ?? 0;
    if (delta < 0 || _offsetY < 0) {
      final next = (_offsetY + delta).clamp(-widget.maxLift, 0.0);
      setState(() => _offsetY = next);
    }
  }

  void _onDragEnd() {
    if (_ready) {
      widget.onTrigger?.call();
    }
    _animateBack();
  }

  void _animateBack() {
    if (_offsetY == 0) return;
    _returnAnimation?.removeListener(_tickAnimation);
    _returnAnimation = Tween<double>(begin: _offsetY, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    )..addListener(_tickAnimation);

    _controller
      ..reset()
      ..forward();
  }

  void _tickAnimation() {
    final value = _returnAnimation?.value;
    if (value == null) return;
    setState(() => _offsetY = value);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onVerticalDragUpdate: _onDragUpdate,
          onVerticalDragEnd: (_) => _onDragEnd(),
          onVerticalDragCancel: _animateBack,
          child: Transform.translate(
            offset: Offset(0, _offsetY),
            child: widget.child,
          ),
        ),
        widget.hintBuilder(context, _pullDistance, _ready),
      ],
    );
  }
}
