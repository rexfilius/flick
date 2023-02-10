import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flick/library.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(EntityMovieAdapter());
  Hive.registerAdapter(EntityTvAdapter());
  await Hive.openBox<EntityMovie>(movieDatabaseName);
  await Hive.openBox<EntityTv>(tvShowDatabaseName);

  runApp(const FlickApp());

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class FlickApp extends StatelessWidget {
  const FlickApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutesMap,
      title: 'Flick',
      theme: ThemeData(
        appBarTheme: globalAppBarTheme,
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      home: const ScreenHome(),
    );
  }
}

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
