import 'package:flutter/material.dart';

/// Push the given route onto the navigator.
push(BuildContext context, {required Widget destination}) =>
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => destination));

pop(BuildContext context, [Object? result]) => Navigator.of(context).pop();
