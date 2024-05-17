import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/save_heaven.dart';

void main() {
  runApp(const ProviderScope(child: SafeHeaven()));
}
