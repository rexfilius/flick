import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// AppBarTheme used all through the app
AppBarTheme globalAppBarTheme = AppBarTheme(
  elevation: 0,
  foregroundColor: Colors.black,
  backgroundColor: Colors.white,
  centerTitle: true,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.grey.shade400,
  ),
);
