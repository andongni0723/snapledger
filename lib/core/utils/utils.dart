import 'package:flutter/material.dart';

extension TextStyleX on TextStyle? {
  TextStyle? get bold => this?.copyWith(fontWeight: FontWeight.bold);
}
