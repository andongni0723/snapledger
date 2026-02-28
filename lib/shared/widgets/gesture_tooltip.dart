import 'package:flutter/material.dart';

Widget gestureTooltip({
  double? top,
  double? bottom,
  double? left,
  double? right,
  bool showHint = false,
  IconData? icon,
  String text = '',
}) {
  return Positioned(
    top: top,
    bottom: bottom,
    left: left,
    right: right,
    child: IgnorePointer(
      child: AnimatedOpacity(
        opacity: showHint ? 1 : 0,
        duration: const Duration(milliseconds: 120),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  if (icon != null) Icon(icon),
                  Text(text)
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
