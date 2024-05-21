import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/src/ui/feature/authetication/login/presentation/view/sign_in.dart';
import 'package:save_heaven/src/ui/feature/dashboard/presentation/view/dashboard.dart';
import 'package:save_heaven/src/utils/utils.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  final _client = Supabase.instance.client.auth;

  late StreamSubscription<AuthState> _streamSubscription;

  void _listenForAuthChanges() async {
    Future.delayed(const Duration(milliseconds: 2000)).then((value) {
      _streamSubscription = _client.onAuthStateChange.listen((data) {
        final event = data.event;

        if (event != AuthChangeEvent.signedOut ||
            event == AuthChangeEvent.initialSession) {
          if (_client.currentUser != null && _client.currentSession != null) {
            pushReplacement(context, destination: Dashboard());
          } else {
            pushReplacement(context, destination: const SiginScreen());
          }
        } else {
          pushReplacement(context, destination: const SiginScreen());
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }

  @override
  void initState() {
    super.initState();
    _listenForAuthChanges();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Save Heaven',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ],
      )),
    ));
  }
}
