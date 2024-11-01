import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

T useBrightnessValue<T>({
  required T light,
  required T dark,
  BuildContext? context,
}) {
  final ctx = context ?? useContext();

  return Theme.of(ctx).brightness == Brightness.dark ? dark : light;
}
