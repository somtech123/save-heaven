// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_heaven/src/app/domain/manager/auth_manager/auth_client.dart';
import 'package:save_heaven/src/ui/feature/authetication/login/presentation/view/sign_in.dart';
import 'package:save_heaven/src/ui/feature/dashboard/presentation/view/dashboard.dart';
import 'package:save_heaven/src/utils/utils.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  final _client = AuthClient.instance;

  void _listenForAuthChanges() async {
    Future.delayed(const Duration(milliseconds: 2000)).then((value) async {
      User? currentUser = await _client.checkAuthState();

      if (currentUser != null) {
        pushReplacement(context, destination: Dashboard());
      } else {
        pushReplacement(context, destination: const SiginScreen());
      }
    });
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
