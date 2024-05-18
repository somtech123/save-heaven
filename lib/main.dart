import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/src/save_heaven.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  await Supabase.initialize(
    url: dotenv.env['PROJECT_URL']!,
    anonKey: dotenv.env['ANON_KEY']!,
  );

  runApp(const ProviderScope(child: SafeHeaven()));
}
